import argparse
import datetime
import json
import logging
import logging.config
import pathlib
import sys
import time
import zipfile
import urllib.parse

import requests
from osgeo import gdal, ogr

class DownloadImageCreodias:
    def __init__(self, user_mail: str, user_password: str):
        assert len(user_password) >= 8, \
            logging.error(f"Password must be longer than 8 characters. Got {len(user_password)}.")
        self.user_mail = user_mail
        self.user_password = user_password

    def _get_keycloak_token(self) -> str:
        url = "https://identity.dataspace.copernicus.eu/auth/realms/CDSE/protocol/openid-connect/token"
        headers = {'Content-Type': 'application/x-www-form-urlencoded'}
        data = {
            'client_id': 'cdse-public',
            'username': self.user_mail,
            'password': self.user_password,
            'grant_type': 'password'
        }
        resp = requests.post(url, data=data, headers=headers)
        resp.raise_for_status()
        return resp.json().get("access_token", "")

    @staticmethod
    def _download_from_url(url: str, output_file: pathlib.Path) -> bool:
        import urllib.request
        from math import floor
        from urllib.error import HTTPError, URLError

        if output_file.exists():
            logging.info(f"File {output_file} already exists, skipping download.")
            return True
        assert output_file.suffix == ".zip", "Output file must have .zip extension"
        try:
            req = urllib.request.urlopen(url)
            total = int(req.getheader('Content-Length').strip())
            downloaded = 0
            chunk_size = 256 * 10240
            with open(output_file, 'wb') as fp:
                while True:
                    chunk = req.read(chunk_size)
                    if not chunk:
                        break
                    fp.write(chunk)
                    downloaded += len(chunk)
                    sys.stdout.write(f"\rDownloaded {downloaded/1024/1024:.2f}MB of {total/1024/1024:.2f}MB ({floor(downloaded/total*100)}%)")
            sys.stdout.write("\n")
        except (HTTPError, URLError) as e:
            logging.error(f"Download error: {e} for URL: {url}")
            return False
        try:
            with zipfile.ZipFile(output_file) as z:
                if z.testzip() is not None:
                    raise zipfile.BadZipFile
        except zipfile.BadZipFile:
            logging.error(f"Corrupted zip file: {output_file}")
            output_file.unlink(missing_ok=True)
            return False
        logging.info(f"Downloaded and validated {output_file} ({output_file.stat().st_size} bytes)")
        return True

    def download_image(self, product: dict, save_dir: pathlib.Path, retries: int = 3) -> bool:
        save_dir.mkdir(parents=True, exist_ok=True)
        token = self._get_keycloak_token()
        url = f"{product['url']}?token={token}"
        output_file = save_dir / f"{product['title']}.zip"
        for attempt in range(1, retries + 1):
            logging.info(f"Downloading {product['title']} (attempt {attempt})")
            if self._download_from_url(url, output_file):
                return True
            time.sleep(10)
        return False

class FindSentinel1:
    def __init__(self, start_date: datetime.date, end_date: datetime.date, geometry_dir: pathlib.Path):
        self.start_date = start_date
        self.end_date = end_date
        self.polygons = []
        for shp in geometry_dir.glob('**/*.shp'):
            poly = self._shape_to_wkt(shp)
            self.polygons.append({'name': shp.stem.upper(), 'wkt': poly})

    @staticmethod
    def _shape_to_wkt(shp_path: pathlib.Path) -> str:
        ds = ogr.Open(str(shp_path))
        lyr = ds.GetLayer()
        feat = lyr.GetNextFeature()
        return feat.GetGeometryRef().ExportToWkt() if feat else ''

    def get_products(self, wkt: str) -> list:
        geom = urllib.parse.quote(wkt, safe='')
        url = (
            'https://catalogue.dataspace.copernicus.eu/resto/api/collections/Sentinel1/search.json?'
            f'startDate={self.start_date.isoformat()}T00:00:00Z&'
            f'completionDate={self.end_date.isoformat()}T23:59:59Z&'
            'productType=GRD&orbitDirection=ascending&'
            'maxRecords=100&sortParam=startDate&sortOrder=descending&status=all&'
            f'geometry={geom}&dataset=ESA-DATASET'
        )
        resp = requests.get(url)
        resp.raise_for_status()
        features = resp.json().get('features', [])
        return [{'title': f['properties']['title'], 'url': f['properties']['services']['download']['url'],
                 'start_date': f['properties']['startDate']} for f in features]

class CalculateBelts:
    BASE_DATES = {
        'P1': datetime.date(2019, 3, 11), 'P1a': datetime.date(2019, 3, 12),
        'P2': datetime.date(2019, 3, 13), 'P3': datetime.date(2019, 3, 19),
        'P4': datetime.date(2019, 3, 16), 'P4a': datetime.date(2019, 3, 17)
    }

    def __init__(self, products: list, belt: str, config: dict):
        self.belt = belt
        self.products = products
        self.config = config
        self.output_dir = pathlib.Path(config['download_directory']) / belt / 'zip'

    def filter_products(self) -> dict:
        grouped = {}
        base = self.BASE_DATES.get(self.belt)
        if not base:
            logging.error(f"Unknown belt {self.belt}")
            return grouped
        for p in self.products:
            date = datetime.datetime.fromisoformat(p['start_date'].replace('Z', '')).date()
            if (date - base).days % 6 == 0:
                grouped.setdefault(date, []).append(p)
        return grouped

    def download(self):
        downloader = DownloadImageCreodias(self.config['creodias_user_mail'], self.config['creodias_user_password'])
        for date, items in self.filter_products().items():
            for prod in items:
                downloader.download_image(prod, self.output_dir)

def main():
    parser = argparse.ArgumentParser(description="Sentinel-1 downloader (P1/P1a/P2/P3/P4/P4a)")
    parser.add_argument('-j', '--configuration_file', required=True, help="Path to config.json")
    parser.add_argument('-s', '--start_date', required=True, help="Start date YYYY-MM-DD")
    parser.add_argument('-e', '--end_date', required=True, help="End date YYYY-MM-DD")
    parser.add_argument('-t', '--track', action='append', choices=list(CalculateBelts.BASE_DATES.keys()),
                        help="Track(s) to download. If omitted, all are processed.")
    args = parser.parse_args()

    with open(args.configuration_file) as f:
        config = json.load(f)
    for key in ['geometry_directory']:
        if key in config:
            config[key] = str(pathlib.Path(config[key]).absolute())

    logging.config.dictConfig({
        'version': 1,
        'disable_existing_loggers': False,
        'formatters': {'default': {'format': '%(asctime)s | %(levelname)s | %(message)s'}},
        'handlers': {'console': {'class': 'logging.StreamHandler', 'formatter': 'default'}},
        'root': {'handlers': ['console'], 'level': 'INFO'}
    })

    start = datetime.datetime.strptime(args.start_date, "%Y-%m-%d").date()
    end = datetime.datetime.strptime(args.end_date, "%Y-%m-%d").date()
    assert start <= end, "Start date must be <= end date"

    finder = FindSentinel1(start, end, pathlib.Path(config['geometry_directory']))
    tracks = args.track or list(CalculateBelts.BASE_DATES.keys())
    for track in tracks:
        entry = next((p for p in finder.polygons if p['name'] == track.rstrip('a')), None)
        if not entry:
            logging.warning(f"No geometry for {track}")
            continue
        products = finder.get_products(entry['wkt'])
        calc = CalculateBelts(products, track, config)
        calc.download()

if __name__ == '__main__':
    main()

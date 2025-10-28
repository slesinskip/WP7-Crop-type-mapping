
#ifndef OTBIOTileMap_EXPORT_H
#define OTBIOTileMap_EXPORT_H

#ifdef OTB_STATIC
#  define OTBIOTileMap_EXPORT
#  define OTBIOTileMap_HIDDEN
#else
#  ifndef OTBIOTileMap_EXPORT
#    ifdef OTBIOTileMap_EXPORTS
        /* We are building this library */
#      define OTBIOTileMap_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBIOTileMap_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBIOTileMap_HIDDEN
#    define OTBIOTileMap_HIDDEN 
#  endif
#endif

#ifndef OTBIOTILEMAP_DEPRECATED
#  define OTBIOTILEMAP_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBIOTILEMAP_DEPRECATED_EXPORT
#  define OTBIOTILEMAP_DEPRECATED_EXPORT OTBIOTileMap_EXPORT OTBIOTILEMAP_DEPRECATED
#endif

#ifndef OTBIOTILEMAP_DEPRECATED_NO_EXPORT
#  define OTBIOTILEMAP_DEPRECATED_NO_EXPORT OTBIOTileMap_HIDDEN OTBIOTILEMAP_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBIOTILEMAP_NO_DEPRECATED
#endif

#endif

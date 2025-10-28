
#ifndef OTBMapla_EXPORT_H
#define OTBMapla_EXPORT_H

#ifdef OTB_STATIC
#  define OTBMapla_EXPORT
#  define OTBMapla_HIDDEN
#else
#  ifndef OTBMapla_EXPORT
#    ifdef OTBMapla_EXPORTS
        /* We are building this library */
#      define OTBMapla_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBMapla_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBMapla_HIDDEN
#    define OTBMapla_HIDDEN 
#  endif
#endif

#ifndef OTBMAPLA_DEPRECATED
#  define OTBMAPLA_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBMAPLA_DEPRECATED_EXPORT
#  define OTBMAPLA_DEPRECATED_EXPORT OTBMapla_EXPORT OTBMAPLA_DEPRECATED
#endif

#ifndef OTBMAPLA_DEPRECATED_NO_EXPORT
#  define OTBMAPLA_DEPRECATED_NO_EXPORT OTBMapla_HIDDEN OTBMAPLA_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBMAPLA_NO_DEPRECATED
#endif

#endif

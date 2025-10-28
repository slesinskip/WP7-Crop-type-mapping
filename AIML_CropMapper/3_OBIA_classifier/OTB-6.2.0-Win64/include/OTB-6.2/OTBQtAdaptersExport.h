
#ifndef OTBQtAdapters_EXPORT_H
#define OTBQtAdapters_EXPORT_H

#ifdef OTB_STATIC
#  define OTBQtAdapters_EXPORT
#  define OTBQtAdapters_HIDDEN
#else
#  ifndef OTBQtAdapters_EXPORT
#    ifdef OTBQtAdapters_EXPORTS
        /* We are building this library */
#      define OTBQtAdapters_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBQtAdapters_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBQtAdapters_HIDDEN
#    define OTBQtAdapters_HIDDEN 
#  endif
#endif

#ifndef OTBQTADAPTERS_DEPRECATED
#  define OTBQTADAPTERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBQTADAPTERS_DEPRECATED_EXPORT
#  define OTBQTADAPTERS_DEPRECATED_EXPORT OTBQtAdapters_EXPORT OTBQTADAPTERS_DEPRECATED
#endif

#ifndef OTBQTADAPTERS_DEPRECATED_NO_EXPORT
#  define OTBQTADAPTERS_DEPRECATED_NO_EXPORT OTBQtAdapters_HIDDEN OTBQTADAPTERS_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBQTADAPTERS_NO_DEPRECATED
#endif

#endif

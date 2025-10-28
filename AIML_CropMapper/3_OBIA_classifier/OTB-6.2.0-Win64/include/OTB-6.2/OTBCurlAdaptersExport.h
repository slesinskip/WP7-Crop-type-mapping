
#ifndef OTBCurlAdapters_EXPORT_H
#define OTBCurlAdapters_EXPORT_H

#ifdef OTB_STATIC
#  define OTBCurlAdapters_EXPORT
#  define OTBCurlAdapters_HIDDEN
#else
#  ifndef OTBCurlAdapters_EXPORT
#    ifdef OTBCurlAdapters_EXPORTS
        /* We are building this library */
#      define OTBCurlAdapters_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBCurlAdapters_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBCurlAdapters_HIDDEN
#    define OTBCurlAdapters_HIDDEN 
#  endif
#endif

#ifndef OTBCURLADAPTERS_DEPRECATED
#  define OTBCURLADAPTERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBCURLADAPTERS_DEPRECATED_EXPORT
#  define OTBCURLADAPTERS_DEPRECATED_EXPORT OTBCurlAdapters_EXPORT OTBCURLADAPTERS_DEPRECATED
#endif

#ifndef OTBCURLADAPTERS_DEPRECATED_NO_EXPORT
#  define OTBCURLADAPTERS_DEPRECATED_NO_EXPORT OTBCurlAdapters_HIDDEN OTBCURLADAPTERS_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBCURLADAPTERS_NO_DEPRECATED
#endif

#endif

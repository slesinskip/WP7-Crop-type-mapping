
#ifndef OTBIce_EXPORT_H
#define OTBIce_EXPORT_H

#ifdef OTB_STATIC
#  define OTBIce_EXPORT
#  define OTBIce_HIDDEN
#else
#  ifndef OTBIce_EXPORT
#    ifdef OTBIce_EXPORTS
        /* We are building this library */
#      define OTBIce_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBIce_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBIce_HIDDEN
#    define OTBIce_HIDDEN 
#  endif
#endif

#ifndef OTBICE_DEPRECATED
#  define OTBICE_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBICE_DEPRECATED_EXPORT
#  define OTBICE_DEPRECATED_EXPORT OTBIce_EXPORT OTBICE_DEPRECATED
#endif

#ifndef OTBICE_DEPRECATED_NO_EXPORT
#  define OTBICE_DEPRECATED_NO_EXPORT OTBIce_HIDDEN OTBICE_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBICE_NO_DEPRECATED
#endif

#endif

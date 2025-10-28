
#ifndef OTBMonteverdi_EXPORT_H
#define OTBMonteverdi_EXPORT_H

#ifdef OTB_STATIC
#  define OTBMonteverdi_EXPORT
#  define OTBMonteverdi_HIDDEN
#else
#  ifndef OTBMonteverdi_EXPORT
#    ifdef OTBMonteverdi_EXPORTS
        /* We are building this library */
#      define OTBMonteverdi_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBMonteverdi_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBMonteverdi_HIDDEN
#    define OTBMonteverdi_HIDDEN 
#  endif
#endif

#ifndef OTBMONTEVERDI_DEPRECATED
#  define OTBMONTEVERDI_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBMONTEVERDI_DEPRECATED_EXPORT
#  define OTBMONTEVERDI_DEPRECATED_EXPORT OTBMonteverdi_EXPORT OTBMONTEVERDI_DEPRECATED
#endif

#ifndef OTBMONTEVERDI_DEPRECATED_NO_EXPORT
#  define OTBMONTEVERDI_DEPRECATED_NO_EXPORT OTBMonteverdi_HIDDEN OTBMONTEVERDI_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBMONTEVERDI_NO_DEPRECATED
#endif

#endif

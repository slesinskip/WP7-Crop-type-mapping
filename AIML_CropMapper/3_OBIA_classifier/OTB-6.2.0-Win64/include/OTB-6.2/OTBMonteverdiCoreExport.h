
#ifndef OTBMonteverdiCore_EXPORT_H
#define OTBMonteverdiCore_EXPORT_H

#ifdef OTB_STATIC
#  define OTBMonteverdiCore_EXPORT
#  define OTBMonteverdiCore_HIDDEN
#else
#  ifndef OTBMonteverdiCore_EXPORT
#    ifdef OTBMonteverdiCore_EXPORTS
        /* We are building this library */
#      define OTBMonteverdiCore_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBMonteverdiCore_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBMonteverdiCore_HIDDEN
#    define OTBMonteverdiCore_HIDDEN 
#  endif
#endif

#ifndef OTBMONTEVERDICORE_DEPRECATED
#  define OTBMONTEVERDICORE_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBMONTEVERDICORE_DEPRECATED_EXPORT
#  define OTBMONTEVERDICORE_DEPRECATED_EXPORT OTBMonteverdiCore_EXPORT OTBMONTEVERDICORE_DEPRECATED
#endif

#ifndef OTBMONTEVERDICORE_DEPRECATED_NO_EXPORT
#  define OTBMONTEVERDICORE_DEPRECATED_NO_EXPORT OTBMonteverdiCore_HIDDEN OTBMONTEVERDICORE_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBMONTEVERDICORE_NO_DEPRECATED
#endif

#endif

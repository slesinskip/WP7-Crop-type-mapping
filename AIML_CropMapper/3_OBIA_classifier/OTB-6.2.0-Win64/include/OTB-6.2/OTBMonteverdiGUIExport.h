
#ifndef OTBMonteverdiGUI_EXPORT_H
#define OTBMonteverdiGUI_EXPORT_H

#ifdef OTB_STATIC
#  define OTBMonteverdiGUI_EXPORT
#  define OTBMonteverdiGUI_HIDDEN
#else
#  ifndef OTBMonteverdiGUI_EXPORT
#    ifdef OTBMonteverdiGUI_EXPORTS
        /* We are building this library */
#      define OTBMonteverdiGUI_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBMonteverdiGUI_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBMonteverdiGUI_HIDDEN
#    define OTBMonteverdiGUI_HIDDEN 
#  endif
#endif

#ifndef OTBMONTEVERDIGUI_DEPRECATED
#  define OTBMONTEVERDIGUI_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBMONTEVERDIGUI_DEPRECATED_EXPORT
#  define OTBMONTEVERDIGUI_DEPRECATED_EXPORT OTBMonteverdiGUI_EXPORT OTBMONTEVERDIGUI_DEPRECATED
#endif

#ifndef OTBMONTEVERDIGUI_DEPRECATED_NO_EXPORT
#  define OTBMONTEVERDIGUI_DEPRECATED_NO_EXPORT OTBMonteverdiGUI_HIDDEN OTBMONTEVERDIGUI_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBMONTEVERDIGUI_NO_DEPRECATED
#endif

#endif

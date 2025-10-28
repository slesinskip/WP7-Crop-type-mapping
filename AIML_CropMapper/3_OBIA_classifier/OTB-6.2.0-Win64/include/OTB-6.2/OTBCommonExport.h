
#ifndef OTBCommon_EXPORT_H
#define OTBCommon_EXPORT_H

#ifdef OTB_STATIC
#  define OTBCommon_EXPORT
#  define OTBCommon_HIDDEN
#else
#  ifndef OTBCommon_EXPORT
#    ifdef OTBCommon_EXPORTS
        /* We are building this library */
#      define OTBCommon_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBCommon_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBCommon_HIDDEN
#    define OTBCommon_HIDDEN 
#  endif
#endif

#ifndef OTBCOMMON_DEPRECATED
#  define OTBCOMMON_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBCOMMON_DEPRECATED_EXPORT
#  define OTBCOMMON_DEPRECATED_EXPORT OTBCommon_EXPORT OTBCOMMON_DEPRECATED
#endif

#ifndef OTBCOMMON_DEPRECATED_NO_EXPORT
#  define OTBCOMMON_DEPRECATED_NO_EXPORT OTBCommon_HIDDEN OTBCOMMON_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBCOMMON_NO_DEPRECATED
#endif

#endif


#ifndef OTBApplicationEngine_EXPORT_H
#define OTBApplicationEngine_EXPORT_H

#ifdef OTB_STATIC
#  define OTBApplicationEngine_EXPORT
#  define OTBApplicationEngine_HIDDEN
#else
#  ifndef OTBApplicationEngine_EXPORT
#    ifdef OTBApplicationEngine_EXPORTS
        /* We are building this library */
#      define OTBApplicationEngine_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBApplicationEngine_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBApplicationEngine_HIDDEN
#    define OTBApplicationEngine_HIDDEN 
#  endif
#endif

#ifndef OTBAPPLICATIONENGINE_DEPRECATED
#  define OTBAPPLICATIONENGINE_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBAPPLICATIONENGINE_DEPRECATED_EXPORT
#  define OTBAPPLICATIONENGINE_DEPRECATED_EXPORT OTBApplicationEngine_EXPORT OTBAPPLICATIONENGINE_DEPRECATED
#endif

#ifndef OTBAPPLICATIONENGINE_DEPRECATED_NO_EXPORT
#  define OTBAPPLICATIONENGINE_DEPRECATED_NO_EXPORT OTBApplicationEngine_HIDDEN OTBAPPLICATIONENGINE_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBAPPLICATIONENGINE_NO_DEPRECATED
#endif

#endif

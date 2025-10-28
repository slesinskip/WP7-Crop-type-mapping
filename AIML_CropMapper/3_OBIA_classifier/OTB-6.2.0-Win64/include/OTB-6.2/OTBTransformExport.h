
#ifndef OTBTransform_EXPORT_H
#define OTBTransform_EXPORT_H

#ifdef OTB_STATIC
#  define OTBTransform_EXPORT
#  define OTBTransform_HIDDEN
#else
#  ifndef OTBTransform_EXPORT
#    ifdef OTBTransform_EXPORTS
        /* We are building this library */
#      define OTBTransform_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBTransform_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBTransform_HIDDEN
#    define OTBTransform_HIDDEN 
#  endif
#endif

#ifndef OTBTRANSFORM_DEPRECATED
#  define OTBTRANSFORM_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBTRANSFORM_DEPRECATED_EXPORT
#  define OTBTRANSFORM_DEPRECATED_EXPORT OTBTransform_EXPORT OTBTRANSFORM_DEPRECATED
#endif

#ifndef OTBTRANSFORM_DEPRECATED_NO_EXPORT
#  define OTBTRANSFORM_DEPRECATED_NO_EXPORT OTBTransform_HIDDEN OTBTRANSFORM_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBTRANSFORM_NO_DEPRECATED
#endif

#endif

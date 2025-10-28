
#ifndef OTBProjection_EXPORT_H
#define OTBProjection_EXPORT_H

#ifdef OTB_STATIC
#  define OTBProjection_EXPORT
#  define OTBProjection_HIDDEN
#else
#  ifndef OTBProjection_EXPORT
#    ifdef OTBProjection_EXPORTS
        /* We are building this library */
#      define OTBProjection_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBProjection_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBProjection_HIDDEN
#    define OTBProjection_HIDDEN 
#  endif
#endif

#ifndef OTBPROJECTION_DEPRECATED
#  define OTBPROJECTION_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBPROJECTION_DEPRECATED_EXPORT
#  define OTBPROJECTION_DEPRECATED_EXPORT OTBProjection_EXPORT OTBPROJECTION_DEPRECATED
#endif

#ifndef OTBPROJECTION_DEPRECATED_NO_EXPORT
#  define OTBPROJECTION_DEPRECATED_NO_EXPORT OTBProjection_HIDDEN OTBPROJECTION_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBPROJECTION_NO_DEPRECATED
#endif

#endif

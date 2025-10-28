
#ifndef OTBImageBase_EXPORT_H
#define OTBImageBase_EXPORT_H

#ifdef OTB_STATIC
#  define OTBImageBase_EXPORT
#  define OTBImageBase_HIDDEN
#else
#  ifndef OTBImageBase_EXPORT
#    ifdef OTBImageBase_EXPORTS
        /* We are building this library */
#      define OTBImageBase_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBImageBase_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBImageBase_HIDDEN
#    define OTBImageBase_HIDDEN 
#  endif
#endif

#ifndef OTBIMAGEBASE_DEPRECATED
#  define OTBIMAGEBASE_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBIMAGEBASE_DEPRECATED_EXPORT
#  define OTBIMAGEBASE_DEPRECATED_EXPORT OTBImageBase_EXPORT OTBIMAGEBASE_DEPRECATED
#endif

#ifndef OTBIMAGEBASE_DEPRECATED_NO_EXPORT
#  define OTBIMAGEBASE_DEPRECATED_NO_EXPORT OTBImageBase_HIDDEN OTBIMAGEBASE_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBIMAGEBASE_NO_DEPRECATED
#endif

#endif

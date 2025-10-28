
#ifndef OTBMetadata_EXPORT_H
#define OTBMetadata_EXPORT_H

#ifdef OTB_STATIC
#  define OTBMetadata_EXPORT
#  define OTBMetadata_HIDDEN
#else
#  ifndef OTBMetadata_EXPORT
#    ifdef OTBMetadata_EXPORTS
        /* We are building this library */
#      define OTBMetadata_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBMetadata_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBMetadata_HIDDEN
#    define OTBMetadata_HIDDEN 
#  endif
#endif

#ifndef OTBMETADATA_DEPRECATED
#  define OTBMETADATA_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBMETADATA_DEPRECATED_EXPORT
#  define OTBMETADATA_DEPRECATED_EXPORT OTBMetadata_EXPORT OTBMETADATA_DEPRECATED
#endif

#ifndef OTBMETADATA_DEPRECATED_NO_EXPORT
#  define OTBMETADATA_DEPRECATED_NO_EXPORT OTBMetadata_HIDDEN OTBMETADATA_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBMETADATA_NO_DEPRECATED
#endif

#endif

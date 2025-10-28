
#ifndef OTBVectorDataBase_EXPORT_H
#define OTBVectorDataBase_EXPORT_H

#ifdef OTB_STATIC
#  define OTBVectorDataBase_EXPORT
#  define OTBVectorDataBase_HIDDEN
#else
#  ifndef OTBVectorDataBase_EXPORT
#    ifdef OTBVectorDataBase_EXPORTS
        /* We are building this library */
#      define OTBVectorDataBase_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBVectorDataBase_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBVectorDataBase_HIDDEN
#    define OTBVectorDataBase_HIDDEN 
#  endif
#endif

#ifndef OTBVECTORDATABASE_DEPRECATED
#  define OTBVECTORDATABASE_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBVECTORDATABASE_DEPRECATED_EXPORT
#  define OTBVECTORDATABASE_DEPRECATED_EXPORT OTBVectorDataBase_EXPORT OTBVECTORDATABASE_DEPRECATED
#endif

#ifndef OTBVECTORDATABASE_DEPRECATED_NO_EXPORT
#  define OTBVECTORDATABASE_DEPRECATED_NO_EXPORT OTBVectorDataBase_HIDDEN OTBVECTORDATABASE_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBVECTORDATABASE_NO_DEPRECATED
#endif

#endif

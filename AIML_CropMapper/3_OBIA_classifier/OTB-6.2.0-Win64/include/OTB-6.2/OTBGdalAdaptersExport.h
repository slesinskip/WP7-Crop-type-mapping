
#ifndef OTBGdalAdapters_EXPORT_H
#define OTBGdalAdapters_EXPORT_H

#ifdef OTB_STATIC
#  define OTBGdalAdapters_EXPORT
#  define OTBGdalAdapters_HIDDEN
#else
#  ifndef OTBGdalAdapters_EXPORT
#    ifdef OTBGdalAdapters_EXPORTS
        /* We are building this library */
#      define OTBGdalAdapters_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBGdalAdapters_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBGdalAdapters_HIDDEN
#    define OTBGdalAdapters_HIDDEN 
#  endif
#endif

#ifndef OTBGDALADAPTERS_DEPRECATED
#  define OTBGDALADAPTERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBGDALADAPTERS_DEPRECATED_EXPORT
#  define OTBGDALADAPTERS_DEPRECATED_EXPORT OTBGdalAdapters_EXPORT OTBGDALADAPTERS_DEPRECATED
#endif

#ifndef OTBGDALADAPTERS_DEPRECATED_NO_EXPORT
#  define OTBGDALADAPTERS_DEPRECATED_NO_EXPORT OTBGdalAdapters_HIDDEN OTBGDALADAPTERS_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBGDALADAPTERS_NO_DEPRECATED
#endif

#endif


#ifndef OTBOSSIMAdapters_EXPORT_H
#define OTBOSSIMAdapters_EXPORT_H

#ifdef OTB_STATIC
#  define OTBOSSIMAdapters_EXPORT
#  define OTBOSSIMAdapters_HIDDEN
#else
#  ifndef OTBOSSIMAdapters_EXPORT
#    ifdef OTBOSSIMAdapters_EXPORTS
        /* We are building this library */
#      define OTBOSSIMAdapters_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBOSSIMAdapters_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBOSSIMAdapters_HIDDEN
#    define OTBOSSIMAdapters_HIDDEN 
#  endif
#endif

#ifndef OTBOSSIMADAPTERS_DEPRECATED
#  define OTBOSSIMADAPTERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBOSSIMADAPTERS_DEPRECATED_EXPORT
#  define OTBOSSIMADAPTERS_DEPRECATED_EXPORT OTBOSSIMAdapters_EXPORT OTBOSSIMADAPTERS_DEPRECATED
#endif

#ifndef OTBOSSIMADAPTERS_DEPRECATED_NO_EXPORT
#  define OTBOSSIMADAPTERS_DEPRECATED_NO_EXPORT OTBOSSIMAdapters_HIDDEN OTBOSSIMADAPTERS_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBOSSIMADAPTERS_NO_DEPRECATED
#endif

#endif


#ifndef OTBSupervised_EXPORT_H
#define OTBSupervised_EXPORT_H

#ifdef OTB_STATIC
#  define OTBSupervised_EXPORT
#  define OTBSupervised_HIDDEN
#else
#  ifndef OTBSupervised_EXPORT
#    ifdef OTBSupervised_EXPORTS
        /* We are building this library */
#      define OTBSupervised_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBSupervised_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBSupervised_HIDDEN
#    define OTBSupervised_HIDDEN 
#  endif
#endif

#ifndef OTBSUPERVISED_DEPRECATED
#  define OTBSUPERVISED_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBSUPERVISED_DEPRECATED_EXPORT
#  define OTBSUPERVISED_DEPRECATED_EXPORT OTBSupervised_EXPORT OTBSUPERVISED_DEPRECATED
#endif

#ifndef OTBSUPERVISED_DEPRECATED_NO_EXPORT
#  define OTBSUPERVISED_DEPRECATED_NO_EXPORT OTBSupervised_HIDDEN OTBSUPERVISED_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBSUPERVISED_NO_DEPRECATED
#endif

#endif


#ifndef OTBCarto_EXPORT_H
#define OTBCarto_EXPORT_H

#ifdef OTB_STATIC
#  define OTBCarto_EXPORT
#  define OTBCarto_HIDDEN
#else
#  ifndef OTBCarto_EXPORT
#    ifdef OTBCarto_EXPORTS
        /* We are building this library */
#      define OTBCarto_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBCarto_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBCarto_HIDDEN
#    define OTBCarto_HIDDEN 
#  endif
#endif

#ifndef OTBCARTO_DEPRECATED
#  define OTBCARTO_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBCARTO_DEPRECATED_EXPORT
#  define OTBCARTO_DEPRECATED_EXPORT OTBCarto_EXPORT OTBCARTO_DEPRECATED
#endif

#ifndef OTBCARTO_DEPRECATED_NO_EXPORT
#  define OTBCARTO_DEPRECATED_NO_EXPORT OTBCarto_HIDDEN OTBCARTO_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBCARTO_NO_DEPRECATED
#endif

#endif

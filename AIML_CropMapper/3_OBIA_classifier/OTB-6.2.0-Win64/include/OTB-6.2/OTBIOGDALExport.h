
#ifndef OTBIOGDAL_EXPORT_H
#define OTBIOGDAL_EXPORT_H

#ifdef OTB_STATIC
#  define OTBIOGDAL_EXPORT
#  define OTBIOGDAL_HIDDEN
#else
#  ifndef OTBIOGDAL_EXPORT
#    ifdef OTBIOGDAL_EXPORTS
        /* We are building this library */
#      define OTBIOGDAL_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBIOGDAL_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBIOGDAL_HIDDEN
#    define OTBIOGDAL_HIDDEN 
#  endif
#endif

#ifndef OTBIOGDAL_DEPRECATED
#  define OTBIOGDAL_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBIOGDAL_DEPRECATED_EXPORT
#  define OTBIOGDAL_DEPRECATED_EXPORT OTBIOGDAL_EXPORT OTBIOGDAL_DEPRECATED
#endif

#ifndef OTBIOGDAL_DEPRECATED_NO_EXPORT
#  define OTBIOGDAL_DEPRECATED_NO_EXPORT OTBIOGDAL_HIDDEN OTBIOGDAL_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBIOGDAL_NO_DEPRECATED
#endif

#endif


#ifndef OTBStreaming_EXPORT_H
#define OTBStreaming_EXPORT_H

#ifdef OTB_STATIC
#  define OTBStreaming_EXPORT
#  define OTBStreaming_HIDDEN
#else
#  ifndef OTBStreaming_EXPORT
#    ifdef OTBStreaming_EXPORTS
        /* We are building this library */
#      define OTBStreaming_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBStreaming_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBStreaming_HIDDEN
#    define OTBStreaming_HIDDEN 
#  endif
#endif

#ifndef OTBSTREAMING_DEPRECATED
#  define OTBSTREAMING_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBSTREAMING_DEPRECATED_EXPORT
#  define OTBSTREAMING_DEPRECATED_EXPORT OTBStreaming_EXPORT OTBSTREAMING_DEPRECATED
#endif

#ifndef OTBSTREAMING_DEPRECATED_NO_EXPORT
#  define OTBSTREAMING_DEPRECATED_NO_EXPORT OTBStreaming_HIDDEN OTBSTREAMING_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBSTREAMING_NO_DEPRECATED
#endif

#endif

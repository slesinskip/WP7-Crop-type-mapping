
#ifndef OTBIceViewer_EXPORT_H
#define OTBIceViewer_EXPORT_H

#ifdef OTB_STATIC
#  define OTBIceViewer_EXPORT
#  define OTBIceViewer_HIDDEN
#else
#  ifndef OTBIceViewer_EXPORT
#    ifdef OTBIceViewer_EXPORTS
        /* We are building this library */
#      define OTBIceViewer_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBIceViewer_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBIceViewer_HIDDEN
#    define OTBIceViewer_HIDDEN 
#  endif
#endif

#ifndef OTBICEVIEWER_DEPRECATED
#  define OTBICEVIEWER_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBICEVIEWER_DEPRECATED_EXPORT
#  define OTBICEVIEWER_DEPRECATED_EXPORT OTBIceViewer_EXPORT OTBICEVIEWER_DEPRECATED
#endif

#ifndef OTBICEVIEWER_DEPRECATED_NO_EXPORT
#  define OTBICEVIEWER_DEPRECATED_NO_EXPORT OTBIceViewer_HIDDEN OTBICEVIEWER_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBICEVIEWER_NO_DEPRECATED
#endif

#endif


#ifndef OTBQtWidget_EXPORT_H
#define OTBQtWidget_EXPORT_H

#ifdef OTB_STATIC
#  define OTBQtWidget_EXPORT
#  define OTBQtWidget_HIDDEN
#else
#  ifndef OTBQtWidget_EXPORT
#    ifdef OTBQtWidget_EXPORTS
        /* We are building this library */
#      define OTBQtWidget_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBQtWidget_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBQtWidget_HIDDEN
#    define OTBQtWidget_HIDDEN 
#  endif
#endif

#ifndef OTBQTWIDGET_DEPRECATED
#  define OTBQTWIDGET_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBQTWIDGET_DEPRECATED_EXPORT
#  define OTBQTWIDGET_DEPRECATED_EXPORT OTBQtWidget_EXPORT OTBQTWIDGET_DEPRECATED
#endif

#ifndef OTBQTWIDGET_DEPRECATED_NO_EXPORT
#  define OTBQTWIDGET_DEPRECATED_NO_EXPORT OTBQtWidget_HIDDEN OTBQTWIDGET_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBQTWIDGET_NO_DEPRECATED
#endif

#endif

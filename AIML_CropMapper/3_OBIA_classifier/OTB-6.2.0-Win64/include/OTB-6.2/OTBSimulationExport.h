
#ifndef OTBSimulation_EXPORT_H
#define OTBSimulation_EXPORT_H

#ifdef OTB_STATIC
#  define OTBSimulation_EXPORT
#  define OTBSimulation_HIDDEN
#else
#  ifndef OTBSimulation_EXPORT
#    ifdef OTBSimulation_EXPORTS
        /* We are building this library */
#      define OTBSimulation_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBSimulation_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBSimulation_HIDDEN
#    define OTBSimulation_HIDDEN 
#  endif
#endif

#ifndef OTBSIMULATION_DEPRECATED
#  define OTBSIMULATION_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBSIMULATION_DEPRECATED_EXPORT
#  define OTBSIMULATION_DEPRECATED_EXPORT OTBSimulation_EXPORT OTBSIMULATION_DEPRECATED
#endif

#ifndef OTBSIMULATION_DEPRECATED_NO_EXPORT
#  define OTBSIMULATION_DEPRECATED_NO_EXPORT OTBSimulation_HIDDEN OTBSIMULATION_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBSIMULATION_NO_DEPRECATED
#endif

#endif

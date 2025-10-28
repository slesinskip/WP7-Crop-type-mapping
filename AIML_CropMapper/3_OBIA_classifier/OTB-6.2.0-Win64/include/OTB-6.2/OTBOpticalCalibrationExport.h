
#ifndef OTBOpticalCalibration_EXPORT_H
#define OTBOpticalCalibration_EXPORT_H

#ifdef OTB_STATIC
#  define OTBOpticalCalibration_EXPORT
#  define OTBOpticalCalibration_HIDDEN
#else
#  ifndef OTBOpticalCalibration_EXPORT
#    ifdef OTBOpticalCalibration_EXPORTS
        /* We are building this library */
#      define OTBOpticalCalibration_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define OTBOpticalCalibration_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef OTBOpticalCalibration_HIDDEN
#    define OTBOpticalCalibration_HIDDEN 
#  endif
#endif

#ifndef OTBOPTICALCALIBRATION_DEPRECATED
#  define OTBOPTICALCALIBRATION_DEPRECATED __declspec(deprecated)
#endif

#ifndef OTBOPTICALCALIBRATION_DEPRECATED_EXPORT
#  define OTBOPTICALCALIBRATION_DEPRECATED_EXPORT OTBOpticalCalibration_EXPORT OTBOPTICALCALIBRATION_DEPRECATED
#endif

#ifndef OTBOPTICALCALIBRATION_DEPRECATED_NO_EXPORT
#  define OTBOPTICALCALIBRATION_DEPRECATED_NO_EXPORT OTBOpticalCalibration_HIDDEN OTBOPTICALCALIBRATION_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define OTBOPTICALCALIBRATION_NO_DEPRECATED
#endif

#endif

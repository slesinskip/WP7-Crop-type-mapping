# This file is modified by OTB after installation.
      
#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "itkdouble-conversion" for configuration "Release"
set_property(TARGET itkdouble-conversion APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itkdouble-conversion PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itkdouble-conversion-4.12.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itkdouble-conversion-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkdouble-conversion )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkdouble-conversion "${_IMPORT_PREFIX}/lib/itkdouble-conversion-4.12.lib" "${_IMPORT_PREFIX}/bin/itkdouble-conversion-4.12.dll" )

# Import target "itksys" for configuration "Release"
set_property(TARGET itksys APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itksys PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itksys-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ws2_32;Psapi"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itksys-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itksys )
list(APPEND _IMPORT_CHECK_FILES_FOR_itksys "${_IMPORT_PREFIX}/lib/itksys-4.12.lib" "${_IMPORT_PREFIX}/bin/itksys-4.12.dll" )

# Import target "itkvcl" for configuration "Release"
set_property(TARGET itkvcl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itkvcl PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itkvcl-4.12.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itkvcl-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkvcl )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkvcl "${_IMPORT_PREFIX}/lib/itkvcl-4.12.lib" "${_IMPORT_PREFIX}/bin/itkvcl-4.12.dll" )

# Import target "itknetlib" for configuration "Release"
set_property(TARGET itknetlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itknetlib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itknetlib-4.12.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itknetlib-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itknetlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_itknetlib "${_IMPORT_PREFIX}/lib/itknetlib-4.12.lib" "${_IMPORT_PREFIX}/bin/itknetlib-4.12.dll" )

# Import target "itkv3p_netlib" for configuration "Release"
set_property(TARGET itkv3p_netlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itkv3p_netlib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itkv3p_netlib-4.12.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itkv3p_netlib-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkv3p_netlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkv3p_netlib "${_IMPORT_PREFIX}/lib/itkv3p_netlib-4.12.lib" "${_IMPORT_PREFIX}/bin/itkv3p_netlib-4.12.dll" )

# Import target "itkvnl" for configuration "Release"
set_property(TARGET itkvnl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itkvnl PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itkvnl-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "itkvcl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itkvnl-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkvnl )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkvnl "${_IMPORT_PREFIX}/lib/itkvnl-4.12.lib" "${_IMPORT_PREFIX}/bin/itkvnl-4.12.dll" )

# Import target "itkvnl_algo" for configuration "Release"
set_property(TARGET itkvnl_algo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itkvnl_algo PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itkvnl_algo-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "itknetlib;itkv3p_netlib;itkvnl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itkvnl_algo-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkvnl_algo )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkvnl_algo "${_IMPORT_PREFIX}/lib/itkvnl_algo-4.12.lib" "${_IMPORT_PREFIX}/bin/itkvnl_algo-4.12.dll" )

# Import target "ITKVNLInstantiation" for configuration "Release"
set_property(TARGET ITKVNLInstantiation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKVNLInstantiation PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKVNLInstantiation-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "itkvnl_algo;itkvnl;itkv3p_netlib;itknetlib;itkvcl;itkvnl_algo;itkvnl;itkv3p_netlib;itknetlib;itkvcl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKVNLInstantiation-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKVNLInstantiation )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKVNLInstantiation "${_IMPORT_PREFIX}/lib/ITKVNLInstantiation-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKVNLInstantiation-4.12.dll" )

# Import target "ITKCommon" for configuration "Release"
set_property(TARGET ITKCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKCommon PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKCommon-4.12.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "itkdouble-conversion"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "itksys;ITKVNLInstantiation"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKCommon-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKCommon "${_IMPORT_PREFIX}/lib/ITKCommon-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKCommon-4.12.dll" )

# Import target "itkNetlibSlatec" for configuration "Release"
set_property(TARGET itkNetlibSlatec APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(itkNetlibSlatec PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/itkNetlibSlatec-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "itkv3p_netlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/itkNetlibSlatec-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS itkNetlibSlatec )
list(APPEND _IMPORT_CHECK_FILES_FOR_itkNetlibSlatec "${_IMPORT_PREFIX}/lib/itkNetlibSlatec-4.12.lib" "${_IMPORT_PREFIX}/bin/itkNetlibSlatec-4.12.dll" )

# Import target "ITKStatistics" for configuration "Release"
set_property(TARGET ITKStatistics APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKStatistics PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKStatistics-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKCommon;itkNetlibSlatec"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKStatistics-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKStatistics )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKStatistics "${_IMPORT_PREFIX}/lib/ITKStatistics-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKStatistics-4.12.dll" )

# Import target "ITKTransform" for configuration "Release"
set_property(TARGET ITKTransform APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKTransform PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKTransform-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKCommon"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKTransform-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKTransform )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKTransform "${_IMPORT_PREFIX}/lib/ITKTransform-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKTransform-4.12.dll" )

# Import target "ITKLabelMap" for configuration "Release"
set_property(TARGET ITKLabelMap APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKLabelMap PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKLabelMap-4.12.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "ITKStatistics"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKLabelMap-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKLabelMap )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKLabelMap "${_IMPORT_PREFIX}/lib/ITKLabelMap-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKLabelMap-4.12.dll" )

# Import target "ITKMesh" for configuration "Release"
set_property(TARGET ITKMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKMesh PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKMesh-4.12.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "ITKTransform"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKMesh-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKMesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKMesh "${_IMPORT_PREFIX}/lib/ITKMesh-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKMesh-4.12.dll" )

# Import target "ITKMetaIO" for configuration "Release"
set_property(TARGET ITKMetaIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKMetaIO PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKMetaIO-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "${ITK_INSTALL_PREFIX}/lib/zdll.lib;comctl32;wsock32"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKMetaIO-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKMetaIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKMetaIO "${_IMPORT_PREFIX}/lib/ITKMetaIO-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKMetaIO-4.12.dll" )

# Import target "ITKSpatialObjects" for configuration "Release"
set_property(TARGET ITKSpatialObjects APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKSpatialObjects PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKSpatialObjects-4.12.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "ITKCommon;ITKMesh"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKTransform"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKSpatialObjects-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKSpatialObjects )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKSpatialObjects "${_IMPORT_PREFIX}/lib/ITKSpatialObjects-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKSpatialObjects-4.12.dll" )

# Import target "ITKPath" for configuration "Release"
set_property(TARGET ITKPath APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKPath PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKPath-4.12.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "ITKCommon"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKPath-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKPath )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKPath "${_IMPORT_PREFIX}/lib/ITKPath-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKPath-4.12.dll" )

# Import target "ITKQuadEdgeMesh" for configuration "Release"
set_property(TARGET ITKQuadEdgeMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKQuadEdgeMesh PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKQuadEdgeMesh-4.12.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "ITKMesh"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKQuadEdgeMesh-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKQuadEdgeMesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKQuadEdgeMesh "${_IMPORT_PREFIX}/lib/ITKQuadEdgeMesh-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKQuadEdgeMesh-4.12.dll" )

# Import target "ITKIOImageBase" for configuration "Release"
set_property(TARGET ITKIOImageBase APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKIOImageBase PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKIOImageBase-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKCommon"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKIOImageBase-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKIOImageBase )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKIOImageBase "${_IMPORT_PREFIX}/lib/ITKIOImageBase-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKIOImageBase-4.12.dll" )

# Import target "ITKOptimizers" for configuration "Release"
set_property(TARGET ITKOptimizers APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKOptimizers PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKOptimizers-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKStatistics"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKOptimizers-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKOptimizers )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKOptimizers "${_IMPORT_PREFIX}/lib/ITKOptimizers-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKOptimizers-4.12.dll" )

# Import target "ITKPolynomials" for configuration "Release"
set_property(TARGET ITKPolynomials APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKPolynomials PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKPolynomials-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKCommon"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKPolynomials-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKPolynomials )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKPolynomials "${_IMPORT_PREFIX}/lib/ITKPolynomials-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKPolynomials-4.12.dll" )

# Import target "ITKBiasCorrection" for configuration "Release"
set_property(TARGET ITKBiasCorrection APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKBiasCorrection PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKBiasCorrection-4.12.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "ITKCommon"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKBiasCorrection-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKBiasCorrection )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKBiasCorrection "${_IMPORT_PREFIX}/lib/ITKBiasCorrection-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKBiasCorrection-4.12.dll" )

# Import target "ITKKLMRegionGrowing" for configuration "Release"
set_property(TARGET ITKKLMRegionGrowing APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKKLMRegionGrowing PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKKLMRegionGrowing-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKCommon"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKKLMRegionGrowing-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKKLMRegionGrowing )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKKLMRegionGrowing "${_IMPORT_PREFIX}/lib/ITKKLMRegionGrowing-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKKLMRegionGrowing-4.12.dll" )

# Import target "ITKOptimizersv4" for configuration "Release"
set_property(TARGET ITKOptimizersv4 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKOptimizersv4 PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKOptimizersv4-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKOptimizers"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKOptimizersv4-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKOptimizersv4 )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKOptimizersv4 "${_IMPORT_PREFIX}/lib/ITKOptimizersv4-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKOptimizersv4-4.12.dll" )

# Import target "ITKWatersheds" for configuration "Release"
set_property(TARGET ITKWatersheds APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ITKWatersheds PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ITKWatersheds-4.12.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ITKCommon;ITKStatistics;ITKTransform;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKTransform;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKTransform;ITKSpatialObjects;ITKPath;ITKCommon;ITKStatistics;ITKTransform;ITKCommon;ITKStatistics;ITKTransform;ITKSpatialObjects;ITKPath"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ITKWatersheds-4.12.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ITKWatersheds )
list(APPEND _IMPORT_CHECK_FILES_FOR_ITKWatersheds "${_IMPORT_PREFIX}/lib/ITKWatersheds-4.12.lib" "${_IMPORT_PREFIX}/bin/ITKWatersheds-4.12.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

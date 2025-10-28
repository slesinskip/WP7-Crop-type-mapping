#
# Copyright (C) 2005-2017 Centre National d'Etudes Spatiales (CNES)
#
# This file is part of Orfeo Toolbox
#
#     https://www.orfeo-toolbox.org/
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#-----------------------------------------------------------------------------
#
# OTBConfig.cmake - OTB CMake configuration file for external projects.
#
# This file is configured by OTB and used by the UseOTB.cmake module
# to load OTB's settings for an external project.

# Compute the installation prefix from this OTBConfig.cmake file location.
get_filename_component(OTB_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(OTB_INSTALL_PREFIX "${OTB_INSTALL_PREFIX}" PATH)
get_filename_component(OTB_INSTALL_PREFIX "${OTB_INSTALL_PREFIX}" PATH)
get_filename_component(OTB_INSTALL_PREFIX "${OTB_INSTALL_PREFIX}" PATH)
set(OTB_MODULES_DIR "${OTB_INSTALL_PREFIX}/lib/cmake/OTB-6.2/Modules")
set(OTB_PYTHONPATH "${OTB_INSTALL_PREFIX}/lib/otb/python")

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
#RK: TODO: add sse2, see4, see4.1, openmp flags

# The C and C++ flags added by OTB to the cmake-configured flags.
set(OTB_REQUIRED_C_FLAGS "")
set(OTB_REQUIRED_CXX_FLAGS " /bigobj")
set(OTB_REQUIRED_LINK_FLAGS " /MANIFEST:NO")

# The OTB version number
set(OTB_VERSION_MAJOR "6")
set(OTB_VERSION_MINOR "2")
set(OTB_VERSION_PATCH "0")

# OTB's CMake directory with modules OTB uses.
set(OTB_CMAKE_DIR "${OTB_INSTALL_PREFIX}/lib/cmake/OTB-6.2")

# OTB uses OPENMP
set(OTB_USE_OPENMP "OFF")

# OTB uses SSE optim
set(OTB_USE_SSE_FLAGS "ON")

# use Find*.cmake files included in OTB package for external dependencies. (OpenCV, GDAL etc..)
set(CMAKE_MODULE_PATH ${OTB_CMAKE_DIR} ${CMAKE_MODULE_PATH})

# The location of the UseOTB.cmake file.
set(OTB_USE_FILE "${OTB_INSTALL_PREFIX}/lib/cmake/OTB-6.2/UseOTB.cmake")

# Whether OTB was built with shared libraries.
set(OTB_BUILD_SHARED "ON")

# Default value for WINDOWS_EXPORT_ALL_SYMBOLS target property
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS "ON")

# List of available OTB modules.
set(OTB_MODULES_ENABLED "OTBBoost;OTBBoostAdapters;OTBGDAL;OTBITK;OTBCommon;OTBOpenThreads;OTBOssim;OTBGeoTIFF;OTBOssimPlugins;OTBOSSIMAdapters;OTBObjectList;OTBMetadata;OTBImageBase;OTBGdalAdapters;OTBTinyXML;OTBVectorDataBase;OTBIOGDAL;OTBExtendedFilename;OTBIOBSQ;OTBIOLUM;OTBIOMSTAR;OTBIOONERA;OTBIORAD;OTBCurl;OTBCurlAdapters;OTBIOTileMap;OTBStreaming;OTBImageIO;OTBInterpolation;OTBTransform;OTBImageManipulation;OTBPath;OTBVectorDataManipulation;OTBProjection;OTBVectorDataIO;OTBApplicationEngine;OTBMoments;OTBLabelMap;OTBConversion;Mosaic;OTBCommandLine;OTBTestKernel;OTB6S;OTBAnomalyDetection;OTBStatistics;OTBChangeDetection;OTBAppChangeDetection;OTBColorMap;OTBFuzzy;OTBMuParser;OTBMathParser;OTBShark;OTBLearningBase;OTBUnsupervised;OTBLibSVM;OTBOpenCV;OTBSupervised;OTBDempsterShafer;OTBIOXML;OTBIndices;OTBMajorityVoting;OTBSOM;OTBSampling;OTBAppClassification;OTBCarto;OTBAppProjection;OTBPointSet;OTBSiftFast;OTBDescriptors;OTBAppDescriptors;OTBDimensionalityReduction;OTBAppDimensionalityReduction;OTBWavelet;OTBAppDomainTransform;OTBSpatialObjects;OTBEdge;OTBAppEdge;OTBAppFiltering;OTBConvolution;OTBPanSharpening;OTBAppFusion;OTBEndmembersExtraction;OTBUnmixing;OTBAppHyperspectral;OTBAppImageUtils;OTBAppIndices;OTBAppMathParser;OTBMuParserX;OTBMathParserX;OTBAppMathParserX;OTBAppMoments;OTBMorphologicalProfiles;OTBAppMorphology;OTBOpticalCalibration;OTBAppOpticalCalibration;OTBSARCalibration;OTBAppSARCalibration;OTBPolarimetry;OTBAppSARDecompositions;OTBAppSARPolarMatrixConvert;OTBAppSARPolarSynth;OTBImageNoise;OTBAppSARUtils;OTBCCOBIA;OTBSmoothing;OTBMeanShift;OTBMetrics;OTBLabelling;OTBOGRProcessing;OTBWatersheds;OTBAppSegmentation;OTBDEM;OTBStereo;OTBDisparityMap;OTBAppStereo;OTBAppTest;OTBTextures;OTBAppTextures;OTBAppVectorDataTranslation;OTBAppVectorUtils;OTBCommandLineParser;OTBOpenThreadsAdapters;OTBCloudDetection;OTBComplexImage;OTBCorner;OTBDensity;OTBDisplacementField;OTBFFSforGMM;OTBOpenGL;OTBGLFW;OTBGlew;OTBGlut;OTBIce;OTBIceViewer;OTBLandSatClassifier;OTBQt4;OTBMonteverdiCore;OTBQwt;OTBQtAdapters;OTBQtWidget;OTBMonteverdiGUI;OTBMapla;OTBMarkov;OTBMonteverdi;OTBMorphologicalPyramid;OTBObjectDetection;OTBRoadExtraction;OTBRCC8;OTBSWIGWrapper;OTBSeamCarving;OTBSimulation;OTBTimeSeries;OTBUrbanArea;SertitObject;otbGRM")

set(OTB_APPLICATION_PATH "${OTB_INSTALL_PREFIX}/lib/otb/applications")

# Import OTB targets.
set(OTB_CONFIG_TARGETS_FILE "${OTB_INSTALL_PREFIX}/lib/cmake/OTB-6.2/OTBTargets.cmake")
if(NOT OTB_TARGETS_IMPORTED)
  set(OTB_TARGETS_IMPORTED 1)
  include("${OTB_CONFIG_TARGETS_FILE}")
endif()

# Load module interface macros.
include("${OTB_INSTALL_PREFIX}/lib/cmake/OTB-6.2/OTBModuleAPI.cmake")

# Load application macros.
include(CMakeParseArguments)
include("${OTB_INSTALL_PREFIX}/lib/cmake/OTB-6.2/OTBApplicationMacros.cmake")

# Compute set of requested modules.
if(OTB_FIND_COMPONENTS)
  # Specific modules requested by find_package(OTB).
  set(OTB_MODULES_REQUESTED "${OTB_FIND_COMPONENTS}")
endif()
if(NOT OTB_MODULES_REQUESTED)
  # No specific modules requested.  Use all of them.
  set(OTB_MODULES_REQUESTED "${OTB_MODULES_ENABLED}")
endif()

# Load requested modules and their dependencies into variables:
#  OTB_LIBRARIES       = Libraries to link
#  OTB_INCLUDE_DIRS    = Header file search path
#  OTB_LIBRARY_DIRS    = Library search path (for outside dependencies)
otb_module_config(OTB ${OTB_MODULES_REQUESTED})

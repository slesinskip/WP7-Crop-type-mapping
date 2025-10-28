# This file is modified by OTB after installation.
      
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

set(OTBITK_LOADED 1)
set(OTBITK_DEPENDS "")
set(OTBITK_LIBRARIES "ITKCommon;itksys;itkvnl_algo;itkvnl;itkv3p_netlib;itknetlib;itkvcl;ITKStatistics;ITKTransform;itkNetlibSlatec;ITKMesh;ITKQuadEdgeMesh;ITKSpatialObjects;ITKMetaIO;${OTB_INSTALL_PREFIX}/lib/zdll.lib;ITKLabelMap;ITKPath;ITKIOImageBase;ITKOptimizers;ITKBiasCorrection;ITKPolynomials;ITKOptimizersv4;ITKKLMRegionGrowing;ITKWatersheds")
set(OTBITK_INCLUDE_DIRS "${OTB_INSTALL_PREFIX}/include/OTB-6.2;${OTB_INSTALL_PREFIX}/include/ITK-4.12;${OTB_INSTALL_PREFIX}/include")
set(OTBITK_LIBRARY_DIRS "")
find_package(ITK REQUIRED COMPONENTS ITKCommon;ITKFiniteDifference;ITKGPUCommon;ITKGPUFiniteDifference;ITKImageAdaptors;ITKImageFunction;ITKMesh;ITKQuadEdgeMesh;ITKSpatialObjects;ITKTransform;ITKAnisotropicSmoothing;ITKAntiAlias;ITKBiasCorrection;ITKBinaryMathematicalMorphology;ITKColormap;ITKConvolution;ITKCurvatureFlow;ITKDeconvolution;ITKDenoising;ITKDisplacementField;ITKDistanceMap;ITKFastMarching;ITKFFT;ITKGPUAnisotropicSmoothing;ITKGPUImageFilterBase;ITKGPUSmoothing;ITKGPUThresholding;ITKImageCompare;ITKImageCompose;ITKImageFeature;ITKImageFilterBase;ITKImageFusion;ITKImageGradient;ITKImageGrid;ITKImageIntensity;ITKImageLabel;ITKImageSources;ITKImageStatistics;ITKLabelMap;ITKMathematicalMorphology;ITKPath;ITKQuadEdgeMeshFiltering;ITKSmoothing;ITKSpatialFunction;ITKThresholding;ITKEigen;ITKNarrowBand;ITKNeuralNetworks;ITKOptimizers;ITKOptimizersv4;ITKPolynomials;ITKStatistics;ITKRegistrationCommon;ITKGPURegistrationCommon;ITKGPUPDEDeformableRegistration;ITKMetricsv4;ITKPDEDeformableRegistration;ITKRegistrationMethodsv4;ITKClassifiers;ITKConnectedComponents;ITKDeformableMesh;ITKKLMRegionGrowing;ITKLabelVoting;ITKLevelSets;ITKLevelSetsv4;ITKMarkovRandomFieldsClassifiers;ITKRegionGrowing;ITKSignedDistanceFunction;ITKVoronoi;ITKWatersheds HINTS ${OTB_INSTALL_PREFIX}/lib/cmake/ITK-4.12)

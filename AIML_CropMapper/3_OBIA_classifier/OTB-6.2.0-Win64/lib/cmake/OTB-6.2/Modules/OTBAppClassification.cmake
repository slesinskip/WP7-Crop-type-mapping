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

set(OTBAppClassification_LOADED 1)
set(OTBAppClassification_DEPENDS "OTBApplicationEngine;OTBBoost;OTBColorMap;OTBCommon;OTBConversion;OTBDempsterShafer;OTBGdalAdapters;OTBIOXML;OTBITK;OTBImageBase;OTBImageManipulation;OTBIndices;OTBInterpolation;OTBLearningBase;OTBMajorityVoting;OTBMathParser;OTBObjectList;OTBProjection;OTBSOM;OTBSampling;OTBStatistics;OTBStreaming;OTBSupervised;OTBUnsupervised;OTBVectorDataBase;OTBVectorDataIO;OTBVectorDataManipulation")
set(OTBAppClassification_LIBRARIES "OTBApplicationEngine;;ITKCommon;itksys;itkvnl_algo;itkvnl;itkv3p_netlib;itknetlib;itkvcl;ITKStatistics;ITKTransform;itkNetlibSlatec;ITKMesh;ITKQuadEdgeMesh;ITKSpatialObjects;ITKMetaIO;${OTB_INSTALL_PREFIX}/lib/zdll.lib;ITKLabelMap;ITKPath;ITKIOImageBase;ITKOptimizers;ITKBiasCorrection;ITKPolynomials;ITKOptimizersv4;ITKKLMRegionGrowing;ITKWatersheds;OTBCommon;${OTB_INSTALL_PREFIX}/lib/gdal_i.lib;OTBGdalAdapters;OTBIOGDAL;OTBImageBase;OTBVectorDataBase;OTBImageManipulation;OTBOSSIMAdapters;OTBTransform;OTBMetadata;OTBStreaming;OTBFuzzy;OTBMathParser;OTBSupervised;${OTB_INSTALL_PREFIX}/lib/tinyxml.lib;OTBImageIO;${OTB_INSTALL_PREFIX}/lib/shark.lib;${OTB_INSTALL_PREFIX}/lib/boost_serialization-vc140-mt-1_60.lib;OTBProjection;OTBSampling;OTBStatistics;OTBVectorDataIO")
set(OTBAppClassification_INCLUDE_DIRS "${OTB_INSTALL_PREFIX}/include/OTB-6.2")
set(OTBAppClassification_LIBRARY_DIRS "")


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

set(OTBAppSARUtils_LOADED 1)
set(OTBAppSARUtils_DEPENDS "OTBApplicationEngine;OTBITK;OTBImageBase;OTBImageNoise")
set(OTBAppSARUtils_LIBRARIES "OTBApplicationEngine;ITKCommon;itksys;itkvnl_algo;itkvnl;itkv3p_netlib;itknetlib;itkvcl;ITKStatistics;ITKTransform;itkNetlibSlatec;ITKMesh;ITKQuadEdgeMesh;ITKSpatialObjects;ITKMetaIO;${OTB_INSTALL_PREFIX}/lib/zdll.lib;ITKLabelMap;ITKPath;ITKIOImageBase;ITKOptimizers;ITKBiasCorrection;ITKPolynomials;ITKOptimizersv4;ITKKLMRegionGrowing;ITKWatersheds;OTBImageBase;OTBImageManipulation")
set(OTBAppSARUtils_INCLUDE_DIRS "${OTB_INSTALL_PREFIX}/include/OTB-6.2")
set(OTBAppSARUtils_LIBRARY_DIRS "")


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

set(OTBOssim_LOADED 1)
set(OTBOssim_DEPENDS "OTBOpenThreads")
set(OTBOssim_LIBRARIES "${OTB_INSTALL_PREFIX}/lib/ossim.lib;${OTB_INSTALL_PREFIX}/lib/OpenThreads.lib")
set(OTBOssim_INCLUDE_DIRS "${OTB_INSTALL_PREFIX}/include/OTB-6.2;${OTB_INSTALL_PREFIX}/include")
set(OTBOssim_LIBRARY_DIRS "")


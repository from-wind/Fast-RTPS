# Copyright 2016 Proyectos y Sistemas de Mantenimiento SL (eProsima).
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

# Prepare auxiliary NSIS scripts
string(TOUPPER "fastrtps" PROJECT_NAME_UPPER)

set(MSVC_ARCH_DIR "")
if(OFF)
    set(MSVC_ARCH_DIR "\\x64Win64VS2017")
endif()

if(OFF)
configure_file(C:/Users/MiguelBarro/Documents/Fast-RTPS/cmake/packaging/windows/EnvVarPage.nsh.in ${CPACK_TOPLEVEL_DIRECTORY}/EnvVarPage.nsh @ONLY)
else()
configure_file(C:/Users/MiguelBarro/Documents/Fast-RTPS/cmake/packaging/windows/EnvVarPage_one_arch.nsh.in ${CPACK_TOPLEVEL_DIRECTORY}/EnvVarPage.nsh @ONLY)
endif()

file(COPY C:/Users/MiguelBarro/Documents/Fast-RTPS/cmake/packaging/windows/EnvVarUpdate.nsh
    DESTINATION ${CPACK_TOPLEVEL_DIRECTORY})

file(COPY C:/Users/MiguelBarro/Documents/Fast-RTPS/cmake/packaging/windows/InstallRedistributables.nsh
    DESTINATION ${CPACK_TOPLEVEL_DIRECTORY})

# Copy images
file(COPY C:/Users/MiguelBarro/Documents/Fast-RTPS/utils/images/logo/eProsimaLogo.jpg
    DESTINATION ${CPACK_TOPLEVEL_DIRECTORY})

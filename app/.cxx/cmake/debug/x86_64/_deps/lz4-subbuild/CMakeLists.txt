# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.17.2)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(lz4-populate NONE)

include(ExternalProject)
ExternalProject_Add(lz4-populate
                     "UPDATE_DISCONNECTED" "False" "GIT_REPOSITORY" "https://github.com/lz4/lz4.git" "GIT_TAG" "v1.9.3"
                    SOURCE_DIR          "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/x86_64/_deps/lz4-src"
                    BINARY_DIR          "C:/Users/Isidore/Desktop/android_lib_es_compression099/app/.cxx/cmake/debug/x86_64/_deps/lz4-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)

# FaceDetect CMake config file
#
# This file sets the following variables:
# FaceDetect_FOUND - Always TRUE.
# FaceDetect_INCLUDE_DIRS - Directories containing the FaceDetect include files.
# FaceDetect_IDL_DIRS - Directories containing the FaceDetect IDL files.
# FaceDetect_LIBRARIES - Libraries needed to use FaceDetect.
# FaceDetect_DEFINITIONS - Compiler flags for FaceDetect.
# FaceDetect_VERSION - The version of FaceDetect found.
# FaceDetect_VERSION_MAJOR - The major version of FaceDetect found.
# FaceDetect_VERSION_MINOR - The minor version of FaceDetect found.
# FaceDetect_VERSION_REVISION - The revision version of FaceDetect found.
# FaceDetect_VERSION_CANDIDATE - The candidate version of FaceDetect found.

message(STATUS "Found FaceDetect-1.0.0")
set(FaceDetect_FOUND TRUE)

find_package(<dependency> REQUIRED)

#set(FaceDetect_INCLUDE_DIRS
#    "/usr/local/include/facedetect-1"
#    ${<dependency>_INCLUDE_DIRS}
#    )
#
#set(FaceDetect_IDL_DIRS
#    "/usr/local/include/facedetect-1/idl")
set(FaceDetect_INCLUDE_DIRS
    "/usr/local/include/"
    ${<dependency>_INCLUDE_DIRS}
    )
set(FaceDetect_IDL_DIRS
    "/usr/local/include//idl")


if(WIN32)
    set(FaceDetect_LIBRARIES
        "/usr/local/components/lib/libfacedetect.a"
        ${<dependency>_LIBRARIES}
        )
else(WIN32)
    set(FaceDetect_LIBRARIES
        "/usr/local/components/lib/libfacedetect.so"
        ${<dependency>_LIBRARIES}
        )
endif(WIN32)

set(FaceDetect_DEFINITIONS ${<dependency>_DEFINITIONS})

set(FaceDetect_VERSION 1.0.0)
set(FaceDetect_VERSION_MAJOR 1)
set(FaceDetect_VERSION_MINOR 0)
set(FaceDetect_VERSION_REVISION 0)
set(FaceDetect_VERSION_CANDIDATE )


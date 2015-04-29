#----------------------------------------------------------------
# Generated CMake target import file for configuration "".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Compute the installation prefix relative to this file.
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Import target "FaceDetect" for configuration ""
SET_PROPERTY(TARGET FaceDetect APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(FaceDetect PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "pthread;omniORB4;omnithread;omniDynamic4;RTC;coil;opencv_videostab;opencv_video;opencv_ts;opencv_superres;opencv_stitching;opencv_photo;opencv_ocl;opencv_objdetect;opencv_nonfree;opencv_ml;opencv_legacy;opencv_imgproc;opencv_highgui;opencv_gpu;opencv_flann;opencv_features2d;opencv_core;opencv_contrib;opencv_calib3d;libmwmclmcrrt.so"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/components/lib/FaceDetect.so"
  IMPORTED_SONAME_NOCONFIG "FaceDetect.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS FaceDetect )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_FaceDetect "${_IMPORT_PREFIX}/components/lib/FaceDetect.so" )

# Import target "FaceDetectComp" for configuration ""
SET_PROPERTY(TARGET FaceDetectComp APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(FaceDetectComp PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/components/bin/FaceDetectComp"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS FaceDetectComp )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_FaceDetectComp "${_IMPORT_PREFIX}/components/bin/FaceDetectComp" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Cleanup temporary variables.
SET(_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)

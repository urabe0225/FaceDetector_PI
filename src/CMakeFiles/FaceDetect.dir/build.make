# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hi-brain/workspace/FaceDetect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hi-brain/workspace/FaceDetect

# Include any dependencies generated for this target.
include src/CMakeFiles/FaceDetect.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/FaceDetect.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/FaceDetect.dir/flags.make

src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o: src/CMakeFiles/FaceDetect.dir/flags.make
src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o: src/FaceDetect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hi-brain/workspace/FaceDetect/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o"
	cd /home/hi-brain/workspace/FaceDetect/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o -c /home/hi-brain/workspace/FaceDetect/src/FaceDetect.cpp

src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetect.dir/FaceDetect.cpp.i"
	cd /home/hi-brain/workspace/FaceDetect/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/hi-brain/workspace/FaceDetect/src/FaceDetect.cpp > CMakeFiles/FaceDetect.dir/FaceDetect.cpp.i

src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetect.dir/FaceDetect.cpp.s"
	cd /home/hi-brain/workspace/FaceDetect/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/hi-brain/workspace/FaceDetect/src/FaceDetect.cpp -o CMakeFiles/FaceDetect.dir/FaceDetect.cpp.s

src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.requires:
.PHONY : src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.requires

src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.provides: src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/FaceDetect.dir/build.make src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.provides.build
.PHONY : src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.provides

src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.provides.build: src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o

src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o: src/CMakeFiles/FaceDetect.dir/flags.make
src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o: src/hi_conversion.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hi-brain/workspace/FaceDetect/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o"
	cd /home/hi-brain/workspace/FaceDetect/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o -c /home/hi-brain/workspace/FaceDetect/src/hi_conversion.cpp

src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetect.dir/hi_conversion.cpp.i"
	cd /home/hi-brain/workspace/FaceDetect/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/hi-brain/workspace/FaceDetect/src/hi_conversion.cpp > CMakeFiles/FaceDetect.dir/hi_conversion.cpp.i

src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetect.dir/hi_conversion.cpp.s"
	cd /home/hi-brain/workspace/FaceDetect/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/hi-brain/workspace/FaceDetect/src/hi_conversion.cpp -o CMakeFiles/FaceDetect.dir/hi_conversion.cpp.s

src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.requires:
.PHONY : src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.requires

src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.provides: src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/FaceDetect.dir/build.make src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.provides.build
.PHONY : src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.provides

src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.provides.build: src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o

# Object files for target FaceDetect
FaceDetect_OBJECTS = \
"CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o" \
"CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o"

# External object files for target FaceDetect
FaceDetect_EXTERNAL_OBJECTS =

src/FaceDetect.so: src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o
src/FaceDetect.so: src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o
src/FaceDetect.so: src/CMakeFiles/FaceDetect.dir/build.make
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_videostab.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_video.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_ts.a
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_superres.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_stitching.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_photo.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_ocl.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_objdetect.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_nonfree.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_ml.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_legacy.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_imgproc.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_highgui.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_gpu.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_flann.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_features2d.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_core.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_contrib.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_calib3d.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_nonfree.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_ocl.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_gpu.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_photo.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_objdetect.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_legacy.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_video.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_ml.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_calib3d.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_features2d.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_highgui.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_imgproc.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_flann.so.2.4.10
src/FaceDetect.so: /usr/local/opencv2.4.10/lib/libopencv_core.so.2.4.10
src/FaceDetect.so: src/CMakeFiles/FaceDetect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library FaceDetect.so"
	cd /home/hi-brain/workspace/FaceDetect/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FaceDetect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/FaceDetect.dir/build: src/FaceDetect.so
.PHONY : src/CMakeFiles/FaceDetect.dir/build

src/CMakeFiles/FaceDetect.dir/requires: src/CMakeFiles/FaceDetect.dir/FaceDetect.cpp.o.requires
src/CMakeFiles/FaceDetect.dir/requires: src/CMakeFiles/FaceDetect.dir/hi_conversion.cpp.o.requires
.PHONY : src/CMakeFiles/FaceDetect.dir/requires

src/CMakeFiles/FaceDetect.dir/clean:
	cd /home/hi-brain/workspace/FaceDetect/src && $(CMAKE_COMMAND) -P CMakeFiles/FaceDetect.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/FaceDetect.dir/clean

src/CMakeFiles/FaceDetect.dir/depend:
	cd /home/hi-brain/workspace/FaceDetect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hi-brain/workspace/FaceDetect /home/hi-brain/workspace/FaceDetect/src /home/hi-brain/workspace/FaceDetect /home/hi-brain/workspace/FaceDetect/src /home/hi-brain/workspace/FaceDetect/src/CMakeFiles/FaceDetect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/FaceDetect.dir/depend


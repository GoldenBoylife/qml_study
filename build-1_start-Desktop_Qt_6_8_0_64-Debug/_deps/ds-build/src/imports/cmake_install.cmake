# Install script for directory: /home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-src/src/imports

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gb/Qt/6.8.0/gcc_64")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/x86_64-linux-gnu-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-build/src/imports/components/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-build/src/imports/effects_qt6/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-build/src/imports/flowview/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-build/src/imports/logichelper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-build/src/imports/multitext/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-build/src/imports/tools/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/gb/workspaces/qt_ws/qml_study/build-1_start-Desktop_Qt_6_8_0_64-Debug/_deps/ds-build/src/imports/application/cmake_install.cmake")
endif()

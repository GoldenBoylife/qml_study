# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app3_2anchors_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app3_2anchors_autogen.dir/ParseCache.txt"
  "app3_2anchors_autogen"
  )
endif()

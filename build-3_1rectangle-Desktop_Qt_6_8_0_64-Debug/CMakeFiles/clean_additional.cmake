# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app3_1rectangle_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app3_1rectangle_autogen.dir/ParseCache.txt"
  "app3_1rectangle_autogen"
  )
endif()

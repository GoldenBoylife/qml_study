# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app1_image4_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app1_image4_autogen.dir/ParseCache.txt"
  "app1_image4_autogen"
  )
endif()

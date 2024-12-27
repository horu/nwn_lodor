cmake_minimum_required(VERSION 3.30)
project(modules)

set(CMAKE_CXX_STANDARD 17)

file(GLOB SRC
  "./temp_cpp/*.cpp"
)

add_executable(modules ./main.cpp  ${SRC})

set_target_properties(modules PROPERTIES LINKER_LANGUAGE CXX)
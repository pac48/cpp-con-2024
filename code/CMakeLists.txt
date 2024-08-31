cmake_minimum_required(VERSION 3.22)
project(fast_forward_kinematics)

set(CMAKE_CXX_STANDARD 20)

generate_fast_forward_kinematics_library(
        ${CMAKE_SOURCE_DIR}/test/ur5.urdf
        base_link ee_link
)
target_compile_options(fast_forward_kinematics_library
        PRIVATE -O3 -mavx2)

add_executable(forward_kinematics_test
               forward_kinematics_test.cpp
)
target_link_libraries(forward_kinematics_test PRIVATE
                      fast_forward_kinematics_library
)
# why ???
add_executable(forward_kinematics_test
        forward_kinematics_test.cpp
)
target_link_libraries(forward_kinematics_test PRIVATE
        fast_forward_kinematics_library
)
# How
# When?





# What?

cmake_minimum_required(VERSION 3.22)
project(fast_forward_kinematics)

# create executable
add_executable(forward_kinematics_test forward_kinematics_test.cpp)

# setup targets to generate C++ code
set(URDF_FILE "data/robot.urdf")
set(ROOT "base_link")
set(TIP "tool0")
generate_fast_forward_kinematics_library(${URDF_FILE} ${ROOT} ${TIP})

# link against generated code
target_link_libraries(forward_kinematics_test PUBLIC fast_forward_kinematics_library)

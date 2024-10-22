function(generate_fast_forward_kinematics_library URDF_FILE ROOT_LINK TIP_LINK)

    find_package(Python REQUIRED COMPONENTS Interpreter)
    if (Python_Interpreter_FOUND)
        message(STATUS "Python executable: ${Python_EXECUTABLE}")
    else ()
        message(FATAL_ERROR "Python interpreter not found.")
    endif ()

    execute_process(
            COMMAND ${Python_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/get_num_joints.py
            ${URDF_FILE}
            ${ROOT_LINK}
            ${TIP_LINK}
            OUTPUT_VARIABLE FAST_FK_NUMBER_OF_JOINTS
            OUTPUT_STRIP_TRAILING_WHITESPACE
            COMMAND_ECHO STDOUT
    )

    include(ExternalProject)
    ExternalProject_Add(
            LBFGSpp
            PREFIX ${CMAKE_BINARY_DIR}/LBFGSpp
            GIT_REPOSITORY https://github.com/yixuan/LBFGSpp.git
            GIT_TAG v0.3.0
            CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}
    )
    ExternalProject_Get_Property(LBFGSpp source_dir)
    set(LBFGSppIncludeDir ${source_dir}/include)

    add_custom_command(
            OUTPUT forward_kinematics_lib.cpp
            COMMAND ${Python_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/robot_gen.py
            ${URDF_FILE}
            ${CMAKE_SOURCE_DIR}/scripts/robot_config.cpp.template
            ${CMAKE_CURRENT_BINARY_DIR}/forward_kinematics_lib.cpp
            ${ROOT_LINK}
            ${TIP_LINK}
            DEPENDS ${URDF_FILE} ${CMAKE_SOURCE_DIR}/scripts/robot_config.cpp.template
            COMMENT
            "Running `${PYTHON_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/robot_gen.py
                      ${URDF_FILE}
                      ${CMAKE_SOURCE_DIR}/scripts/robot_config.cpp.template
                      ${CMAKE_CURRENT_BINARY_DIR}/forward_kinematics_test.cpp
                      ${ROOT_LINK}
                      ${TIP_LINK}`"
            VERBATIM
    )
    add_custom_target(code_generation DEPENDS forward_kinematics_lib.cpp)

    add_library(fast_forward_kinematics_library SHARED forward_kinematics_lib.cpp)
    add_dependencies(fast_forward_kinematics_library code_generation)
    add_dependencies(fast_forward_kinematics_library LBFGSpp)

    find_package(Eigen3 3.3 NO_MODULE)
    target_compile_definitions(fast_forward_kinematics_library PUBLIC "${FAST_FK_NUMBER_OF_JOINTS}")
    target_include_directories(fast_forward_kinematics_library PUBLIC ${CMAKE_SOURCE_DIR}/include)
    target_include_directories(fast_forward_kinematics_library PUBLIC ${LBFGSppIncludeDir})
    target_link_libraries(fast_forward_kinematics_library PUBLIC Eigen3::Eigen)

endfunction()
















#
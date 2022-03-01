cmake_minimum_required(VERSION 3.10)

set (CMAKE_CXX_STANDARD 11) 

# if(NOT CMAKE_BUILD_TYPE)
# set(CMAKE_BUILD_TYPE Release)
# endif()


SET(DEBUG 1)


IF(DEBUG MATCHES 1)
    add_compile_options(-g -ggdb -O0 -std=c++11)
ELSE()
    add_compile_options(-O3 -w -fopenmp -std=c++11) #-ggdb
ENDIF()

# project name
project("name_PROJECT")



# # Include directories
# find_package(yaml-cpp REQUIRED)  # crea le variabili ${YAML_INCLUDE_DIRS} e ${YAML_CPP_LIBRARIES}
# message(STATUS "YAML_INCLUDE_DIRS = " ${YAML_INCLUDE_DIRS})
# message(STATUS "YAML_CPP_LIBRARIES = " ${YAML_CPP_LIBRARIES})

# # Include directories:: WORHP
# FIND_LIBRARY(WORHP_LIBRARY NAMES worhp)
# FIND_PATH(WORHP_INCLUDE_DIR NAMES worhp/worhp.h)
# IF(NOT WORHP_LIBRARY)
#     MESSAGE(FATAL_ERROR "WORHP support was requested, but the library could not be located. The library should be called 'libworhp')")
# ENDIF(NOT WORHP_LIBRARY)
# IF(NOT WORHP_INCLUDE_DIR)
#     MESSAGE(FATAL_ERROR "WORHP support was requested, but worhp/worhp.h not be located.")
# ENDIF(NOT WORHP_INCLUDE_DIR)
# MESSAGE(STATUS "WORHP library: ${WORHP_LIBRARY}")
# MESSAGE(STATUS "WORHP include dir: ${WORHP_INCLUDE_DIR}")



# Paths
set (SRCS_EXE   
                src/main.cpp
                # src/ut.cpp
                # src/earthmars.cpp
                # src/C_KeplerArc.cpp
                # src/C_prb_rendezvousUT.cpp
                # src/rendezvousUT_options.cpp
                # RR/src/prb_RR.cpp
)

set (EXE_INCLUDE_DIR include)

# set (EOS_HOME ${PROJECT_SOURCE_DIR}/ext/EOS)
# set (EOS_INCLUDE_DIR ${EOS_HOME}/include)
set (EIGEN_INCLUDE_DIR "/usr/local/include/eigen3")

# Include
include_directories(    ${EXE_INCUDE_DIR}
                        ${EIGEN_INCLUDE_DIR}  
                        # ${EOS_INCLUDE_DIR}
                        # ${WORHP_INCLUDE_DIR}
                        # ${YAML_INCLUDE_DIRS}
)

# add the executable
set (EXE_NAME ${PROJECT_NAME})
add_executable(${EXE_NAME} ${SRCS_EXE})

find_package(OpenMP)
if (OPENMP_FOUND)
    set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif()

# CVODE library
# set (SUNDIALS_CVODE "/usr/local/lib/libsundials_cvode.so")
# set (SUNDIALS_NVECTSERIAL   "/usr/local/lib/libsundials_nvecserial.so")
# set (LIBS_SUNDIALS ${SUNDIALS_CVODE} ${SUNDIALS_NVECTSERIAL})


# # EOS library
# set (EOS_LIB_CPP "${PROJECT_SOURCE_DIR}/ext/EOS/lib/libEOS.a")
# set (EOS_LIB_C   "${PROJECT_SOURCE_DIR}/ext/EOS/lib/libEOS.so")
# set (EOS_LIBS ${EOS_LIB_CPP} ${EOS_LIB_C})



# link: inserisci le librerie da linkare
set (LIBS  
             ${EOS_LIBS}  
            # ${LIBS_SUNDIALS}
            # ${YAML_CPP_LIBRARIES}
            # ${WORHP_LIBRARY}
)

# auto-link
target_link_libraries(${EXE_NAME} ${LIBS})





 
 

 

 

 
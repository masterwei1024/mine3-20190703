cmake_minimum_required(VERSION 2.8.3)
project(package1)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
 # package1
)

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
  xx.msg
 xsxx.msg
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs  # Or other package1s containing msgs
 )

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################


###################################
## catkin specific configuration ##
###################################
## The catkin_package1 macro generates cmake config files for your package1
catkin_package(
#  INCLUDE_DIRS include
  CATKIN_DEPENDS message_runtime
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package1 locations should be listed before other locations
include_directories(
 include
 ${catkin_INCLUDE_DIRS}
)


#############
## Install ##
#############
#add_dependencies(node1 package1_gencpp)
#add_dependencies(node2 package1_gencpp)

add_executable(node1 src/node1.cpp)
target_link_libraries(node1 ${catkin_LIBRARIES})
add_executable(node2 src/node2.cpp src/xxxt.cpp)
target_link_libraries(node2 ${catkin_LIBRARIES})


#############
## Testing ##
#############


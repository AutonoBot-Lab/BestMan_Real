# Install script for directory: /home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yan/BestMan_Real/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easy_handeye_msgs/msg" TYPE FILE FILES
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easy_handeye_msgs/srv/calibration" TYPE FILE FILES
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easy_handeye_msgs/srv/robot_movements" TYPE FILE FILES
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv"
    "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easy_handeye_msgs/cmake" TYPE FILE FILES "/home/yan/BestMan_Real/catkin_ws/build/easy_handeye/easy_handeye_msgs/catkin_generated/installspace/easy_handeye_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yan/BestMan_Real/catkin_ws/devel/include/easy_handeye_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yan/BestMan_Real/catkin_ws/devel/share/roseus/ros/easy_handeye_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yan/BestMan_Real/catkin_ws/devel/share/common-lisp/ros/easy_handeye_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yan/BestMan_Real/catkin_ws/devel/share/gennodejs/ros/easy_handeye_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/yan/BestMan_Real/catkin_ws/devel/lib/python3/dist-packages/easy_handeye_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/yan/BestMan_Real/catkin_ws/devel/lib/python3/dist-packages/easy_handeye_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yan/BestMan_Real/catkin_ws/build/easy_handeye/easy_handeye_msgs/catkin_generated/installspace/easy_handeye_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easy_handeye_msgs/cmake" TYPE FILE FILES "/home/yan/BestMan_Real/catkin_ws/build/easy_handeye/easy_handeye_msgs/catkin_generated/installspace/easy_handeye_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easy_handeye_msgs/cmake" TYPE FILE FILES
    "/home/yan/BestMan_Real/catkin_ws/build/easy_handeye/easy_handeye_msgs/catkin_generated/installspace/easy_handeye_msgsConfig.cmake"
    "/home/yan/BestMan_Real/catkin_ws/build/easy_handeye/easy_handeye_msgs/catkin_generated/installspace/easy_handeye_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/easy_handeye_msgs" TYPE FILE FILES "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/package.xml")
endif()


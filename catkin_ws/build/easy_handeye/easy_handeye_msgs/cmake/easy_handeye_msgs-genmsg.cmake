# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "easy_handeye_msgs: 3 messages, 10 services")

set(MSG_I_FLAGS "-Ieasy_handeye_msgs:/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(easy_handeye_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg" "std_msgs/Header:geometry_msgs/Vector3:geometry_msgs/TransformStamped:geometry_msgs/Transform:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Transform"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg" "std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv" ""
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv" ""
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv" "std_msgs/Header:geometry_msgs/Vector3:geometry_msgs/TransformStamped:geometry_msgs/Transform:geometry_msgs/Quaternion:easy_handeye_msgs/HandeyeCalibration"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv" "geometry_msgs/Vector3:easy_handeye_msgs/SampleList:geometry_msgs/Quaternion:geometry_msgs/Transform"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv" "geometry_msgs/Vector3:easy_handeye_msgs/SampleList:geometry_msgs/Quaternion:geometry_msgs/Transform"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv" "std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:easy_handeye_msgs/TargetPoseList"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv" "std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:easy_handeye_msgs/TargetPoseList"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv" "std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:easy_handeye_msgs/TargetPoseList"
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv" ""
)

get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv" NAME_WE)
add_custom_target(_easy_handeye_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "easy_handeye_msgs" "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Services
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_cpp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Module File
_generate_module_cpp(easy_handeye_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(easy_handeye_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(easy_handeye_msgs_generate_messages easy_handeye_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_cpp _easy_handeye_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easy_handeye_msgs_gencpp)
add_dependencies(easy_handeye_msgs_gencpp easy_handeye_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easy_handeye_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Services
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_eus(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Module File
_generate_module_eus(easy_handeye_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(easy_handeye_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(easy_handeye_msgs_generate_messages easy_handeye_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_eus _easy_handeye_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easy_handeye_msgs_geneus)
add_dependencies(easy_handeye_msgs_geneus easy_handeye_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easy_handeye_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Services
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_lisp(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Module File
_generate_module_lisp(easy_handeye_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(easy_handeye_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(easy_handeye_msgs_generate_messages easy_handeye_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_lisp _easy_handeye_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easy_handeye_msgs_genlisp)
add_dependencies(easy_handeye_msgs_genlisp easy_handeye_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easy_handeye_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Services
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_nodejs(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Module File
_generate_module_nodejs(easy_handeye_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(easy_handeye_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(easy_handeye_msgs_generate_messages easy_handeye_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_nodejs _easy_handeye_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easy_handeye_msgs_gennodejs)
add_dependencies(easy_handeye_msgs_gennodejs easy_handeye_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easy_handeye_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_msg_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Services
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)
_generate_srv_py(easy_handeye_msgs
  "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
)

### Generating Module File
_generate_module_py(easy_handeye_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(easy_handeye_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(easy_handeye_msgs_generate_messages easy_handeye_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/HandeyeCalibration.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/SampleList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/msg/TargetPoseList.msg" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ListAlgorithms.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/SetAlgorithm.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/ComputeCalibration.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/RemoveSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/calibration/TakeSample.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/CheckStartingPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/EnumerateTargetPoses.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/SelectTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/PlanToSelectedTargetPose.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yan/BestMan_Real/catkin_ws/src/easy_handeye/easy_handeye_msgs/srv/robot_movements/ExecutePlan.srv" NAME_WE)
add_dependencies(easy_handeye_msgs_generate_messages_py _easy_handeye_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(easy_handeye_msgs_genpy)
add_dependencies(easy_handeye_msgs_genpy easy_handeye_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS easy_handeye_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/easy_handeye_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(easy_handeye_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(easy_handeye_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/easy_handeye_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(easy_handeye_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(easy_handeye_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/easy_handeye_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(easy_handeye_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(easy_handeye_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/easy_handeye_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(easy_handeye_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(easy_handeye_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/easy_handeye_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(easy_handeye_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(easy_handeye_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()

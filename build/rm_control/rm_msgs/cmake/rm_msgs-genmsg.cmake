# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rm_msgs: 43 messages, 4 services")

set(MSG_I_FLAGS "-Irm_msgs:/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg;-Irm_msgs:/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection;-Irm_msgs:/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee;-Irm_msgs:/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg" "actionlib_msgs/GoalID:rm_msgs/EngineerGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg" "actionlib_msgs/GoalID:rm_msgs/EngineerActionFeedback:rm_msgs/EngineerResult:actionlib_msgs/GoalStatus:rm_msgs/EngineerFeedback:rm_msgs/EngineerActionResult:rm_msgs/EngineerGoal:rm_msgs/EngineerActionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" "rm_msgs/TargetDetection:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg" "geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg" "geometry_msgs/Vector3:geometry_msgs/Accel"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg" "actionlib_msgs/GoalID:rm_msgs/EngineerFeedback:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:rm_msgs/EngineerResult:std_msgs/Header"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" ""
)

get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_cpp(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_gencpp)
add_dependencies(rm_msgs_gencpp rm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_eus(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_geneus)
add_dependencies(rm_msgs_geneus rm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_lisp(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_genlisp)
add_dependencies(rm_msgs_genlisp rm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_nodejs(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_gennodejs)
add_dependencies(rm_msgs_gennodejs rm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg;/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_py(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/Referee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/devel/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nick/Project_8_aardbeisorteermachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_genpy)
add_dependencies(rm_msgs_genpy rm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rm_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(rm_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rm_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(rm_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rm_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(rm_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rm_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(rm_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rm_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(rm_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()

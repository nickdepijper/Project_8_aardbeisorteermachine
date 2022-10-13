# Install script for directory: /home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nick/AardbeiSorteerMachine/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/msg" TYPE FILE FILES
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/ActuatorState.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/BalanceState.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/DbusData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/ShootCmd.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/LpData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/KalmanData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/SuperCapacitor.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/GpioData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/TofRadarData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/srv" TYPE FILE FILES
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/srv/StatusChange.srv"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/srv/CameraStatus.srv"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/msg/detection" TYPE FILE FILES
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/msg/referee" TYPE FILE FILES
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/EngineerCmd.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/EventData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/DartRemainingTime.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/BulletRemaining.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/Referee.msg"
    "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/action" TYPE FILE FILES "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/action/Engineer.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/msg" TYPE FILE FILES
    "/home/nick/AardbeiSorteerMachine/devel/share/rm_msgs/msg/EngineerAction.msg"
    "/home/nick/AardbeiSorteerMachine/devel/share/rm_msgs/msg/EngineerActionGoal.msg"
    "/home/nick/AardbeiSorteerMachine/devel/share/rm_msgs/msg/EngineerActionResult.msg"
    "/home/nick/AardbeiSorteerMachine/devel/share/rm_msgs/msg/EngineerActionFeedback.msg"
    "/home/nick/AardbeiSorteerMachine/devel/share/rm_msgs/msg/EngineerGoal.msg"
    "/home/nick/AardbeiSorteerMachine/devel/share/rm_msgs/msg/EngineerResult.msg"
    "/home/nick/AardbeiSorteerMachine/devel/share/rm_msgs/msg/EngineerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/cmake" TYPE FILE FILES "/home/nick/AardbeiSorteerMachine/build/rm_control/rm_msgs/catkin_generated/installspace/rm_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nick/AardbeiSorteerMachine/devel/include/rm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nick/AardbeiSorteerMachine/devel/share/roseus/ros/rm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nick/AardbeiSorteerMachine/devel/share/common-lisp/ros/rm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nick/AardbeiSorteerMachine/devel/share/gennodejs/ros/rm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nick/AardbeiSorteerMachine/devel/lib/python2.7/dist-packages/rm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nick/AardbeiSorteerMachine/devel/lib/python2.7/dist-packages/rm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nick/AardbeiSorteerMachine/build/rm_control/rm_msgs/catkin_generated/installspace/rm_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/cmake" TYPE FILE FILES "/home/nick/AardbeiSorteerMachine/build/rm_control/rm_msgs/catkin_generated/installspace/rm_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs/cmake" TYPE FILE FILES
    "/home/nick/AardbeiSorteerMachine/build/rm_control/rm_msgs/catkin_generated/installspace/rm_msgsConfig.cmake"
    "/home/nick/AardbeiSorteerMachine/build/rm_control/rm_msgs/catkin_generated/installspace/rm_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rm_msgs" TYPE FILE FILES "/home/nick/AardbeiSorteerMachine/src/rm_control/rm_msgs/package.xml")
endif()


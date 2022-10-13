;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::GameRobotStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'GameRobotStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GAMEROBOTSTATUS")
  (make-package "RM_MSGS::GAMEROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GameRobotStatus.msg.html


(intern "*RED_HERO*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_HERO* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_HERO* 1)
(intern "*RED_ENGINEER*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_ENGINEER* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_ENGINEER* 2)
(intern "*RED_STANDARD_3*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_STANDARD_3* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_STANDARD_3* 3)
(intern "*RED_STANDARD_4*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_STANDARD_4* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_STANDARD_4* 4)
(intern "*RED_STANDARD_5*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_STANDARD_5* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_STANDARD_5* 5)
(intern "*RED_AERIAL*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_AERIAL* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_AERIAL* 6)
(intern "*RED_SENTRY*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_SENTRY* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_SENTRY* 7)
(intern "*RED_RADAR*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*RED_RADAR* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*RED_RADAR* 9)
(intern "*BLUE_HERO*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_HERO* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_HERO* 101)
(intern "*BLUE_ENGINEER*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_ENGINEER* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_ENGINEER* 102)
(intern "*BLUE_STANDARD_3*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_STANDARD_3* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_STANDARD_3* 103)
(intern "*BLUE_STANDARD_4*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_STANDARD_4* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_STANDARD_4* 104)
(intern "*BLUE_STANDARD_5*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_STANDARD_5* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_STANDARD_5* 105)
(intern "*BLUE_AERIAL*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_AERIAL* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_AERIAL* 106)
(intern "*BLUE_SENTRY*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_SENTRY* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_SENTRY* 107)
(intern "*BLUE_RADAR*" (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(shadow '*BLUE_RADAR* (find-package "RM_MSGS::GAMEROBOTSTATUS"))
(defconstant rm_msgs::GameRobotStatus::*BLUE_RADAR* 109)
(defclass rm_msgs::GameRobotStatus
  :super ros::object
  :slots (_robot_id _robot_level _remain_hp _max_hp _shooter_id_1_17_mm_cooling_rate _shooter_id_1_17_mm_cooling_limit _shooter_id_1_17_mm_speed_limit _shooter_id_2_17_mm_cooling_rate _shooter_id_2_17_mm_cooling_limit _shooter_id_2_17_mm_speed_limit _shooter_id_1_42_mm_cooling_rate _shooter_id_1_42_mm_cooling_limit _shooter_id_1_42_mm_speed_limit _chassis_power_limit _mains_power_gimbal_output _mains_power_chassis_output _mains_power_shooter_output _stamp ))

(defmethod rm_msgs::GameRobotStatus
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:robot_level __robot_level) 0)
    ((:remain_hp __remain_hp) 0)
    ((:max_hp __max_hp) 0)
    ((:shooter_id_1_17_mm_cooling_rate __shooter_id_1_17_mm_cooling_rate) 0)
    ((:shooter_id_1_17_mm_cooling_limit __shooter_id_1_17_mm_cooling_limit) 0)
    ((:shooter_id_1_17_mm_speed_limit __shooter_id_1_17_mm_speed_limit) 0)
    ((:shooter_id_2_17_mm_cooling_rate __shooter_id_2_17_mm_cooling_rate) 0)
    ((:shooter_id_2_17_mm_cooling_limit __shooter_id_2_17_mm_cooling_limit) 0)
    ((:shooter_id_2_17_mm_speed_limit __shooter_id_2_17_mm_speed_limit) 0)
    ((:shooter_id_1_42_mm_cooling_rate __shooter_id_1_42_mm_cooling_rate) 0)
    ((:shooter_id_1_42_mm_cooling_limit __shooter_id_1_42_mm_cooling_limit) 0)
    ((:shooter_id_1_42_mm_speed_limit __shooter_id_1_42_mm_speed_limit) 0)
    ((:chassis_power_limit __chassis_power_limit) 0)
    ((:mains_power_gimbal_output __mains_power_gimbal_output) 0)
    ((:mains_power_chassis_output __mains_power_chassis_output) 0)
    ((:mains_power_shooter_output __mains_power_shooter_output) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _robot_level (round __robot_level))
   (setq _remain_hp (round __remain_hp))
   (setq _max_hp (round __max_hp))
   (setq _shooter_id_1_17_mm_cooling_rate (round __shooter_id_1_17_mm_cooling_rate))
   (setq _shooter_id_1_17_mm_cooling_limit (round __shooter_id_1_17_mm_cooling_limit))
   (setq _shooter_id_1_17_mm_speed_limit (round __shooter_id_1_17_mm_speed_limit))
   (setq _shooter_id_2_17_mm_cooling_rate (round __shooter_id_2_17_mm_cooling_rate))
   (setq _shooter_id_2_17_mm_cooling_limit (round __shooter_id_2_17_mm_cooling_limit))
   (setq _shooter_id_2_17_mm_speed_limit (round __shooter_id_2_17_mm_speed_limit))
   (setq _shooter_id_1_42_mm_cooling_rate (round __shooter_id_1_42_mm_cooling_rate))
   (setq _shooter_id_1_42_mm_cooling_limit (round __shooter_id_1_42_mm_cooling_limit))
   (setq _shooter_id_1_42_mm_speed_limit (round __shooter_id_1_42_mm_speed_limit))
   (setq _chassis_power_limit (round __chassis_power_limit))
   (setq _mains_power_gimbal_output (round __mains_power_gimbal_output))
   (setq _mains_power_chassis_output (round __mains_power_chassis_output))
   (setq _mains_power_shooter_output (round __mains_power_shooter_output))
   (setq _stamp __stamp)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:robot_level
   (&optional __robot_level)
   (if __robot_level (setq _robot_level __robot_level)) _robot_level)
  (:remain_hp
   (&optional __remain_hp)
   (if __remain_hp (setq _remain_hp __remain_hp)) _remain_hp)
  (:max_hp
   (&optional __max_hp)
   (if __max_hp (setq _max_hp __max_hp)) _max_hp)
  (:shooter_id_1_17_mm_cooling_rate
   (&optional __shooter_id_1_17_mm_cooling_rate)
   (if __shooter_id_1_17_mm_cooling_rate (setq _shooter_id_1_17_mm_cooling_rate __shooter_id_1_17_mm_cooling_rate)) _shooter_id_1_17_mm_cooling_rate)
  (:shooter_id_1_17_mm_cooling_limit
   (&optional __shooter_id_1_17_mm_cooling_limit)
   (if __shooter_id_1_17_mm_cooling_limit (setq _shooter_id_1_17_mm_cooling_limit __shooter_id_1_17_mm_cooling_limit)) _shooter_id_1_17_mm_cooling_limit)
  (:shooter_id_1_17_mm_speed_limit
   (&optional __shooter_id_1_17_mm_speed_limit)
   (if __shooter_id_1_17_mm_speed_limit (setq _shooter_id_1_17_mm_speed_limit __shooter_id_1_17_mm_speed_limit)) _shooter_id_1_17_mm_speed_limit)
  (:shooter_id_2_17_mm_cooling_rate
   (&optional __shooter_id_2_17_mm_cooling_rate)
   (if __shooter_id_2_17_mm_cooling_rate (setq _shooter_id_2_17_mm_cooling_rate __shooter_id_2_17_mm_cooling_rate)) _shooter_id_2_17_mm_cooling_rate)
  (:shooter_id_2_17_mm_cooling_limit
   (&optional __shooter_id_2_17_mm_cooling_limit)
   (if __shooter_id_2_17_mm_cooling_limit (setq _shooter_id_2_17_mm_cooling_limit __shooter_id_2_17_mm_cooling_limit)) _shooter_id_2_17_mm_cooling_limit)
  (:shooter_id_2_17_mm_speed_limit
   (&optional __shooter_id_2_17_mm_speed_limit)
   (if __shooter_id_2_17_mm_speed_limit (setq _shooter_id_2_17_mm_speed_limit __shooter_id_2_17_mm_speed_limit)) _shooter_id_2_17_mm_speed_limit)
  (:shooter_id_1_42_mm_cooling_rate
   (&optional __shooter_id_1_42_mm_cooling_rate)
   (if __shooter_id_1_42_mm_cooling_rate (setq _shooter_id_1_42_mm_cooling_rate __shooter_id_1_42_mm_cooling_rate)) _shooter_id_1_42_mm_cooling_rate)
  (:shooter_id_1_42_mm_cooling_limit
   (&optional __shooter_id_1_42_mm_cooling_limit)
   (if __shooter_id_1_42_mm_cooling_limit (setq _shooter_id_1_42_mm_cooling_limit __shooter_id_1_42_mm_cooling_limit)) _shooter_id_1_42_mm_cooling_limit)
  (:shooter_id_1_42_mm_speed_limit
   (&optional __shooter_id_1_42_mm_speed_limit)
   (if __shooter_id_1_42_mm_speed_limit (setq _shooter_id_1_42_mm_speed_limit __shooter_id_1_42_mm_speed_limit)) _shooter_id_1_42_mm_speed_limit)
  (:chassis_power_limit
   (&optional __chassis_power_limit)
   (if __chassis_power_limit (setq _chassis_power_limit __chassis_power_limit)) _chassis_power_limit)
  (:mains_power_gimbal_output
   (&optional __mains_power_gimbal_output)
   (if __mains_power_gimbal_output (setq _mains_power_gimbal_output __mains_power_gimbal_output)) _mains_power_gimbal_output)
  (:mains_power_chassis_output
   (&optional __mains_power_chassis_output)
   (if __mains_power_chassis_output (setq _mains_power_chassis_output __mains_power_chassis_output)) _mains_power_chassis_output)
  (:mains_power_shooter_output
   (&optional __mains_power_shooter_output)
   (if __mains_power_shooter_output (setq _mains_power_shooter_output __mains_power_shooter_output)) _mains_power_shooter_output)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _robot_id
    1
    ;; uint8 _robot_level
    1
    ;; uint16 _remain_hp
    2
    ;; uint16 _max_hp
    2
    ;; uint16 _shooter_id_1_17_mm_cooling_rate
    2
    ;; uint16 _shooter_id_1_17_mm_cooling_limit
    2
    ;; uint16 _shooter_id_1_17_mm_speed_limit
    2
    ;; uint16 _shooter_id_2_17_mm_cooling_rate
    2
    ;; uint16 _shooter_id_2_17_mm_cooling_limit
    2
    ;; uint16 _shooter_id_2_17_mm_speed_limit
    2
    ;; uint16 _shooter_id_1_42_mm_cooling_rate
    2
    ;; uint16 _shooter_id_1_42_mm_cooling_limit
    2
    ;; uint16 _shooter_id_1_42_mm_speed_limit
    2
    ;; uint16 _chassis_power_limit
    2
    ;; uint8 _mains_power_gimbal_output
    1
    ;; uint8 _mains_power_chassis_output
    1
    ;; uint8 _mains_power_shooter_output
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _robot_id
       (write-byte _robot_id s)
     ;; uint8 _robot_level
       (write-byte _robot_level s)
     ;; uint16 _remain_hp
       (write-word _remain_hp s)
     ;; uint16 _max_hp
       (write-word _max_hp s)
     ;; uint16 _shooter_id_1_17_mm_cooling_rate
       (write-word _shooter_id_1_17_mm_cooling_rate s)
     ;; uint16 _shooter_id_1_17_mm_cooling_limit
       (write-word _shooter_id_1_17_mm_cooling_limit s)
     ;; uint16 _shooter_id_1_17_mm_speed_limit
       (write-word _shooter_id_1_17_mm_speed_limit s)
     ;; uint16 _shooter_id_2_17_mm_cooling_rate
       (write-word _shooter_id_2_17_mm_cooling_rate s)
     ;; uint16 _shooter_id_2_17_mm_cooling_limit
       (write-word _shooter_id_2_17_mm_cooling_limit s)
     ;; uint16 _shooter_id_2_17_mm_speed_limit
       (write-word _shooter_id_2_17_mm_speed_limit s)
     ;; uint16 _shooter_id_1_42_mm_cooling_rate
       (write-word _shooter_id_1_42_mm_cooling_rate s)
     ;; uint16 _shooter_id_1_42_mm_cooling_limit
       (write-word _shooter_id_1_42_mm_cooling_limit s)
     ;; uint16 _shooter_id_1_42_mm_speed_limit
       (write-word _shooter_id_1_42_mm_speed_limit s)
     ;; uint16 _chassis_power_limit
       (write-word _chassis_power_limit s)
     ;; uint8 _mains_power_gimbal_output
       (write-byte _mains_power_gimbal_output s)
     ;; uint8 _mains_power_chassis_output
       (write-byte _mains_power_chassis_output s)
     ;; uint8 _mains_power_shooter_output
       (write-byte _mains_power_shooter_output s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _robot_id
     (setq _robot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _robot_level
     (setq _robot_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _remain_hp
     (setq _remain_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _max_hp
     (setq _max_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_17_mm_cooling_rate
     (setq _shooter_id_1_17_mm_cooling_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_17_mm_cooling_limit
     (setq _shooter_id_1_17_mm_cooling_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_17_mm_speed_limit
     (setq _shooter_id_1_17_mm_speed_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_2_17_mm_cooling_rate
     (setq _shooter_id_2_17_mm_cooling_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_2_17_mm_cooling_limit
     (setq _shooter_id_2_17_mm_cooling_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_2_17_mm_speed_limit
     (setq _shooter_id_2_17_mm_speed_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_42_mm_cooling_rate
     (setq _shooter_id_1_42_mm_cooling_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_42_mm_cooling_limit
     (setq _shooter_id_1_42_mm_cooling_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_42_mm_speed_limit
     (setq _shooter_id_1_42_mm_speed_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _chassis_power_limit
     (setq _chassis_power_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _mains_power_gimbal_output
     (setq _mains_power_gimbal_output (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mains_power_chassis_output
     (setq _mains_power_chassis_output (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mains_power_shooter_output
     (setq _mains_power_shooter_output (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::GameRobotStatus :md5sum-) "dc5fb7b81d23729d5093f2858a70344a")
(setf (get rm_msgs::GameRobotStatus :datatype-) "rm_msgs/GameRobotStatus")
(setf (get rm_msgs::GameRobotStatus :definition-)
      "uint8 RED_HERO = 1
uint8 RED_ENGINEER = 2
uint8 RED_STANDARD_3 = 3
uint8 RED_STANDARD_4 = 4
uint8 RED_STANDARD_5 = 5
uint8 RED_AERIAL = 6
uint8 RED_SENTRY = 7
uint8 RED_RADAR = 9
uint8 BLUE_HERO = 101
uint8 BLUE_ENGINEER = 102
uint8 BLUE_STANDARD_3 = 103
uint8 BLUE_STANDARD_4 = 104
uint8 BLUE_STANDARD_5 = 105
uint8 BLUE_AERIAL = 106
uint8 BLUE_SENTRY = 107
uint8 BLUE_RADAR = 109

uint8 robot_id
uint8 robot_level
uint16 remain_hp
uint16 max_hp
uint16 shooter_id_1_17_mm_cooling_rate
uint16 shooter_id_1_17_mm_cooling_limit
uint16 shooter_id_1_17_mm_speed_limit
uint16 shooter_id_2_17_mm_cooling_rate
uint16 shooter_id_2_17_mm_cooling_limit
uint16 shooter_id_2_17_mm_speed_limit
uint16 shooter_id_1_42_mm_cooling_rate
uint16 shooter_id_1_42_mm_cooling_limit
uint16 shooter_id_1_42_mm_speed_limit
uint16 chassis_power_limit
uint8 mains_power_gimbal_output
uint8 mains_power_chassis_output
uint8 mains_power_shooter_output

time stamp

")



(provide :rm_msgs/GameRobotStatus "dc5fb7b81d23729d5093f2858a70344a")



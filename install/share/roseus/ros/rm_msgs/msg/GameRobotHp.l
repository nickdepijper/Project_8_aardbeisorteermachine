;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::GameRobotHp)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'GameRobotHp (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GAMEROBOTHP")
  (make-package "RM_MSGS::GAMEROBOTHP"))

(in-package "ROS")
;;//! \htmlinclude GameRobotHp.msg.html


(defclass rm_msgs::GameRobotHp
  :super ros::object
  :slots (_red_1_robot_hp _red_2_robot_hp _red_3_robot_hp _red_4_robot_hp _red_5_robot_hp _red_7_robot_hp _blue_1_robot_hp _blue_2_robot_hp _blue_3_robot_hp _blue_4_robot_hp _blue_5_robot_hp _blue_7_robot_hp _stamp ))

(defmethod rm_msgs::GameRobotHp
  (:init
   (&key
    ((:red_1_robot_hp __red_1_robot_hp) 0)
    ((:red_2_robot_hp __red_2_robot_hp) 0)
    ((:red_3_robot_hp __red_3_robot_hp) 0)
    ((:red_4_robot_hp __red_4_robot_hp) 0)
    ((:red_5_robot_hp __red_5_robot_hp) 0)
    ((:red_7_robot_hp __red_7_robot_hp) 0)
    ((:blue_1_robot_hp __blue_1_robot_hp) 0)
    ((:blue_2_robot_hp __blue_2_robot_hp) 0)
    ((:blue_3_robot_hp __blue_3_robot_hp) 0)
    ((:blue_4_robot_hp __blue_4_robot_hp) 0)
    ((:blue_5_robot_hp __blue_5_robot_hp) 0)
    ((:blue_7_robot_hp __blue_7_robot_hp) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _red_1_robot_hp (round __red_1_robot_hp))
   (setq _red_2_robot_hp (round __red_2_robot_hp))
   (setq _red_3_robot_hp (round __red_3_robot_hp))
   (setq _red_4_robot_hp (round __red_4_robot_hp))
   (setq _red_5_robot_hp (round __red_5_robot_hp))
   (setq _red_7_robot_hp (round __red_7_robot_hp))
   (setq _blue_1_robot_hp (round __blue_1_robot_hp))
   (setq _blue_2_robot_hp (round __blue_2_robot_hp))
   (setq _blue_3_robot_hp (round __blue_3_robot_hp))
   (setq _blue_4_robot_hp (round __blue_4_robot_hp))
   (setq _blue_5_robot_hp (round __blue_5_robot_hp))
   (setq _blue_7_robot_hp (round __blue_7_robot_hp))
   (setq _stamp __stamp)
   self)
  (:red_1_robot_hp
   (&optional __red_1_robot_hp)
   (if __red_1_robot_hp (setq _red_1_robot_hp __red_1_robot_hp)) _red_1_robot_hp)
  (:red_2_robot_hp
   (&optional __red_2_robot_hp)
   (if __red_2_robot_hp (setq _red_2_robot_hp __red_2_robot_hp)) _red_2_robot_hp)
  (:red_3_robot_hp
   (&optional __red_3_robot_hp)
   (if __red_3_robot_hp (setq _red_3_robot_hp __red_3_robot_hp)) _red_3_robot_hp)
  (:red_4_robot_hp
   (&optional __red_4_robot_hp)
   (if __red_4_robot_hp (setq _red_4_robot_hp __red_4_robot_hp)) _red_4_robot_hp)
  (:red_5_robot_hp
   (&optional __red_5_robot_hp)
   (if __red_5_robot_hp (setq _red_5_robot_hp __red_5_robot_hp)) _red_5_robot_hp)
  (:red_7_robot_hp
   (&optional __red_7_robot_hp)
   (if __red_7_robot_hp (setq _red_7_robot_hp __red_7_robot_hp)) _red_7_robot_hp)
  (:blue_1_robot_hp
   (&optional __blue_1_robot_hp)
   (if __blue_1_robot_hp (setq _blue_1_robot_hp __blue_1_robot_hp)) _blue_1_robot_hp)
  (:blue_2_robot_hp
   (&optional __blue_2_robot_hp)
   (if __blue_2_robot_hp (setq _blue_2_robot_hp __blue_2_robot_hp)) _blue_2_robot_hp)
  (:blue_3_robot_hp
   (&optional __blue_3_robot_hp)
   (if __blue_3_robot_hp (setq _blue_3_robot_hp __blue_3_robot_hp)) _blue_3_robot_hp)
  (:blue_4_robot_hp
   (&optional __blue_4_robot_hp)
   (if __blue_4_robot_hp (setq _blue_4_robot_hp __blue_4_robot_hp)) _blue_4_robot_hp)
  (:blue_5_robot_hp
   (&optional __blue_5_robot_hp)
   (if __blue_5_robot_hp (setq _blue_5_robot_hp __blue_5_robot_hp)) _blue_5_robot_hp)
  (:blue_7_robot_hp
   (&optional __blue_7_robot_hp)
   (if __blue_7_robot_hp (setq _blue_7_robot_hp __blue_7_robot_hp)) _blue_7_robot_hp)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _red_1_robot_hp
    2
    ;; uint16 _red_2_robot_hp
    2
    ;; uint16 _red_3_robot_hp
    2
    ;; uint16 _red_4_robot_hp
    2
    ;; uint16 _red_5_robot_hp
    2
    ;; uint16 _red_7_robot_hp
    2
    ;; uint16 _blue_1_robot_hp
    2
    ;; uint16 _blue_2_robot_hp
    2
    ;; uint16 _blue_3_robot_hp
    2
    ;; uint16 _blue_4_robot_hp
    2
    ;; uint16 _blue_5_robot_hp
    2
    ;; uint16 _blue_7_robot_hp
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _red_1_robot_hp
       (write-word _red_1_robot_hp s)
     ;; uint16 _red_2_robot_hp
       (write-word _red_2_robot_hp s)
     ;; uint16 _red_3_robot_hp
       (write-word _red_3_robot_hp s)
     ;; uint16 _red_4_robot_hp
       (write-word _red_4_robot_hp s)
     ;; uint16 _red_5_robot_hp
       (write-word _red_5_robot_hp s)
     ;; uint16 _red_7_robot_hp
       (write-word _red_7_robot_hp s)
     ;; uint16 _blue_1_robot_hp
       (write-word _blue_1_robot_hp s)
     ;; uint16 _blue_2_robot_hp
       (write-word _blue_2_robot_hp s)
     ;; uint16 _blue_3_robot_hp
       (write-word _blue_3_robot_hp s)
     ;; uint16 _blue_4_robot_hp
       (write-word _blue_4_robot_hp s)
     ;; uint16 _blue_5_robot_hp
       (write-word _blue_5_robot_hp s)
     ;; uint16 _blue_7_robot_hp
       (write-word _blue_7_robot_hp s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _red_1_robot_hp
     (setq _red_1_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _red_2_robot_hp
     (setq _red_2_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _red_3_robot_hp
     (setq _red_3_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _red_4_robot_hp
     (setq _red_4_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _red_5_robot_hp
     (setq _red_5_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _red_7_robot_hp
     (setq _red_7_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_1_robot_hp
     (setq _blue_1_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_2_robot_hp
     (setq _blue_2_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_3_robot_hp
     (setq _blue_3_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_4_robot_hp
     (setq _blue_4_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_5_robot_hp
     (setq _blue_5_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_7_robot_hp
     (setq _blue_7_robot_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::GameRobotHp :md5sum-) "66fa2022c43b8226b63be911e036f15a")
(setf (get rm_msgs::GameRobotHp :datatype-) "rm_msgs/GameRobotHp")
(setf (get rm_msgs::GameRobotHp :definition-)
      "uint16 red_1_robot_hp
uint16 red_2_robot_hp
uint16 red_3_robot_hp
uint16 red_4_robot_hp
uint16 red_5_robot_hp
uint16 red_7_robot_hp
uint16 blue_1_robot_hp
uint16 blue_2_robot_hp
uint16 blue_3_robot_hp
uint16 blue_4_robot_hp
uint16 blue_5_robot_hp
uint16 blue_7_robot_hp

time stamp

")



(provide :rm_msgs/GameRobotHp "66fa2022c43b8226b63be911e036f15a")



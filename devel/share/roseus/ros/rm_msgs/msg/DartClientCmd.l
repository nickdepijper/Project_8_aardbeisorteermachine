;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::DartClientCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'DartClientCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::DARTCLIENTCMD")
  (make-package "RM_MSGS::DARTCLIENTCMD"))

(in-package "ROS")
;;//! \htmlinclude DartClientCmd.msg.html


(defclass rm_msgs::DartClientCmd
  :super ros::object
  :slots (_dart_launch_opening_status _dart_attack_target _target_change_time _first_dart_speed _second_dart_speed _third_dart_speed _fourth_dart_speed _last_dart_launch_time _operate_launch_cmd_time _stamp ))

(defmethod rm_msgs::DartClientCmd
  (:init
   (&key
    ((:dart_launch_opening_status __dart_launch_opening_status) 0)
    ((:dart_attack_target __dart_attack_target) 0)
    ((:target_change_time __target_change_time) 0)
    ((:first_dart_speed __first_dart_speed) 0)
    ((:second_dart_speed __second_dart_speed) 0)
    ((:third_dart_speed __third_dart_speed) 0)
    ((:fourth_dart_speed __fourth_dart_speed) 0)
    ((:last_dart_launch_time __last_dart_launch_time) 0)
    ((:operate_launch_cmd_time __operate_launch_cmd_time) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _dart_launch_opening_status (round __dart_launch_opening_status))
   (setq _dart_attack_target (round __dart_attack_target))
   (setq _target_change_time (round __target_change_time))
   (setq _first_dart_speed (round __first_dart_speed))
   (setq _second_dart_speed (round __second_dart_speed))
   (setq _third_dart_speed (round __third_dart_speed))
   (setq _fourth_dart_speed (round __fourth_dart_speed))
   (setq _last_dart_launch_time (round __last_dart_launch_time))
   (setq _operate_launch_cmd_time (round __operate_launch_cmd_time))
   (setq _stamp __stamp)
   self)
  (:dart_launch_opening_status
   (&optional __dart_launch_opening_status)
   (if __dart_launch_opening_status (setq _dart_launch_opening_status __dart_launch_opening_status)) _dart_launch_opening_status)
  (:dart_attack_target
   (&optional __dart_attack_target)
   (if __dart_attack_target (setq _dart_attack_target __dart_attack_target)) _dart_attack_target)
  (:target_change_time
   (&optional __target_change_time)
   (if __target_change_time (setq _target_change_time __target_change_time)) _target_change_time)
  (:first_dart_speed
   (&optional __first_dart_speed)
   (if __first_dart_speed (setq _first_dart_speed __first_dart_speed)) _first_dart_speed)
  (:second_dart_speed
   (&optional __second_dart_speed)
   (if __second_dart_speed (setq _second_dart_speed __second_dart_speed)) _second_dart_speed)
  (:third_dart_speed
   (&optional __third_dart_speed)
   (if __third_dart_speed (setq _third_dart_speed __third_dart_speed)) _third_dart_speed)
  (:fourth_dart_speed
   (&optional __fourth_dart_speed)
   (if __fourth_dart_speed (setq _fourth_dart_speed __fourth_dart_speed)) _fourth_dart_speed)
  (:last_dart_launch_time
   (&optional __last_dart_launch_time)
   (if __last_dart_launch_time (setq _last_dart_launch_time __last_dart_launch_time)) _last_dart_launch_time)
  (:operate_launch_cmd_time
   (&optional __operate_launch_cmd_time)
   (if __operate_launch_cmd_time (setq _operate_launch_cmd_time __operate_launch_cmd_time)) _operate_launch_cmd_time)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _dart_launch_opening_status
    1
    ;; uint8 _dart_attack_target
    1
    ;; uint16 _target_change_time
    2
    ;; uint8 _first_dart_speed
    1
    ;; uint8 _second_dart_speed
    1
    ;; uint8 _third_dart_speed
    1
    ;; uint8 _fourth_dart_speed
    1
    ;; uint16 _last_dart_launch_time
    2
    ;; uint16 _operate_launch_cmd_time
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _dart_launch_opening_status
       (write-byte _dart_launch_opening_status s)
     ;; uint8 _dart_attack_target
       (write-byte _dart_attack_target s)
     ;; uint16 _target_change_time
       (write-word _target_change_time s)
     ;; uint8 _first_dart_speed
       (write-byte _first_dart_speed s)
     ;; uint8 _second_dart_speed
       (write-byte _second_dart_speed s)
     ;; uint8 _third_dart_speed
       (write-byte _third_dart_speed s)
     ;; uint8 _fourth_dart_speed
       (write-byte _fourth_dart_speed s)
     ;; uint16 _last_dart_launch_time
       (write-word _last_dart_launch_time s)
     ;; uint16 _operate_launch_cmd_time
       (write-word _operate_launch_cmd_time s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _dart_launch_opening_status
     (setq _dart_launch_opening_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dart_attack_target
     (setq _dart_attack_target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _target_change_time
     (setq _target_change_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _first_dart_speed
     (setq _first_dart_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _second_dart_speed
     (setq _second_dart_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _third_dart_speed
     (setq _third_dart_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fourth_dart_speed
     (setq _fourth_dart_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _last_dart_launch_time
     (setq _last_dart_launch_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _operate_launch_cmd_time
     (setq _operate_launch_cmd_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::DartClientCmd :md5sum-) "437595b17fc80be6e24b8cf8e3dabe1a")
(setf (get rm_msgs::DartClientCmd :datatype-) "rm_msgs/DartClientCmd")
(setf (get rm_msgs::DartClientCmd :definition-)
      "uint8 dart_launch_opening_status
uint8 dart_attack_target
uint16 target_change_time
uint8 first_dart_speed
uint8 second_dart_speed
uint8 third_dart_speed
uint8 fourth_dart_speed
uint16 last_dart_launch_time
uint16 operate_launch_cmd_time

time stamp

")



(provide :rm_msgs/DartClientCmd "437595b17fc80be6e24b8cf8e3dabe1a")



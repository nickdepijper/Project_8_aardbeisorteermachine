;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::CapacityData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'CapacityData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CAPACITYDATA")
  (make-package "RM_MSGS::CAPACITYDATA"))

(in-package "ROS")
;;//! \htmlinclude CapacityData.msg.html


(defclass rm_msgs::CapacityData
  :super ros::object
  :slots (_chassis_power _buffer_power _limit_power _cap_power _is_online _stamp ))

(defmethod rm_msgs::CapacityData
  (:init
   (&key
    ((:chassis_power __chassis_power) 0)
    ((:buffer_power __buffer_power) 0)
    ((:limit_power __limit_power) 0)
    ((:cap_power __cap_power) 0.0)
    ((:is_online __is_online) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _chassis_power (round __chassis_power))
   (setq _buffer_power (round __buffer_power))
   (setq _limit_power (round __limit_power))
   (setq _cap_power (float __cap_power))
   (setq _is_online __is_online)
   (setq _stamp __stamp)
   self)
  (:chassis_power
   (&optional __chassis_power)
   (if __chassis_power (setq _chassis_power __chassis_power)) _chassis_power)
  (:buffer_power
   (&optional __buffer_power)
   (if __buffer_power (setq _buffer_power __buffer_power)) _buffer_power)
  (:limit_power
   (&optional __limit_power)
   (if __limit_power (setq _limit_power __limit_power)) _limit_power)
  (:cap_power
   (&optional __cap_power)
   (if __cap_power (setq _cap_power __cap_power)) _cap_power)
  (:is_online
   (&optional __is_online)
   (if __is_online (setq _is_online __is_online)) _is_online)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _chassis_power
    1
    ;; uint8 _buffer_power
    1
    ;; uint8 _limit_power
    1
    ;; float32 _cap_power
    4
    ;; bool _is_online
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _chassis_power
       (write-byte _chassis_power s)
     ;; uint8 _buffer_power
       (write-byte _buffer_power s)
     ;; uint8 _limit_power
       (write-byte _limit_power s)
     ;; float32 _cap_power
       (sys::poke _cap_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_online
       (if _is_online (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _chassis_power
     (setq _chassis_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _buffer_power
     (setq _buffer_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _limit_power
     (setq _limit_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _cap_power
     (setq _cap_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_online
     (setq _is_online (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::CapacityData :md5sum-) "c2ee01400115ac8523ac26598ec5c41b")
(setf (get rm_msgs::CapacityData :datatype-) "rm_msgs/CapacityData")
(setf (get rm_msgs::CapacityData :definition-)
      "uint8 chassis_power
uint8 buffer_power
uint8 limit_power
float32 cap_power
bool is_online

time stamp

")



(provide :rm_msgs/CapacityData "c2ee01400115ac8523ac26598ec5c41b")



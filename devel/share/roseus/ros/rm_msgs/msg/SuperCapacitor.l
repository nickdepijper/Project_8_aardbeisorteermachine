;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SuperCapacitor)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SuperCapacitor (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SUPERCAPACITOR")
  (make-package "RM_MSGS::SUPERCAPACITOR"))

(in-package "ROS")
;;//! \htmlinclude SuperCapacitor.msg.html


(defclass rm_msgs::SuperCapacitor
  :super ros::object
  :slots (_capacity _limit_power _chassis_power _chassis_power_buffer _stamp ))

(defmethod rm_msgs::SuperCapacitor
  (:init
   (&key
    ((:capacity __capacity) 0.0)
    ((:limit_power __limit_power) 0.0)
    ((:chassis_power __chassis_power) 0.0)
    ((:chassis_power_buffer __chassis_power_buffer) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _capacity (float __capacity))
   (setq _limit_power (float __limit_power))
   (setq _chassis_power (float __chassis_power))
   (setq _chassis_power_buffer (round __chassis_power_buffer))
   (setq _stamp __stamp)
   self)
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:limit_power
   (&optional __limit_power)
   (if __limit_power (setq _limit_power __limit_power)) _limit_power)
  (:chassis_power
   (&optional __chassis_power)
   (if __chassis_power (setq _chassis_power __chassis_power)) _chassis_power)
  (:chassis_power_buffer
   (&optional __chassis_power_buffer)
   (if __chassis_power_buffer (setq _chassis_power_buffer __chassis_power_buffer)) _chassis_power_buffer)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float32 _capacity
    4
    ;; float32 _limit_power
    4
    ;; float32 _chassis_power
    4
    ;; uint16 _chassis_power_buffer
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _capacity
       (sys::poke _capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _limit_power
       (sys::poke _limit_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _chassis_power
       (sys::poke _chassis_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _chassis_power_buffer
       (write-word _chassis_power_buffer s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _capacity
     (setq _capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _limit_power
     (setq _limit_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _chassis_power
     (setq _chassis_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _chassis_power_buffer
     (setq _chassis_power_buffer (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::SuperCapacitor :md5sum-) "95558de4e002ee575de7525116e2b0a3")
(setf (get rm_msgs::SuperCapacitor :datatype-) "rm_msgs/SuperCapacitor")
(setf (get rm_msgs::SuperCapacitor :definition-)
      "float32 capacity
float32 limit_power
float32 chassis_power
uint16 chassis_power_buffer

time stamp

")



(provide :rm_msgs/SuperCapacitor "95558de4e002ee575de7525116e2b0a3")



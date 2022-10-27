;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PowerHeatData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PowerHeatData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POWERHEATDATA")
  (make-package "RM_MSGS::POWERHEATDATA"))

(in-package "ROS")
;;//! \htmlinclude PowerHeatData.msg.html


(defclass rm_msgs::PowerHeatData
  :super ros::object
  :slots (_chassis_volt _chassis_current _chassis_power _chassis_power_buffer _shooter_id_1_17_mm_cooling_heat _shooter_id_2_17_mm_cooling_heat _shooter_id_1_42_mm_cooling_heat _stamp ))

(defmethod rm_msgs::PowerHeatData
  (:init
   (&key
    ((:chassis_volt __chassis_volt) 0.0)
    ((:chassis_current __chassis_current) 0.0)
    ((:chassis_power __chassis_power) 0.0)
    ((:chassis_power_buffer __chassis_power_buffer) 0)
    ((:shooter_id_1_17_mm_cooling_heat __shooter_id_1_17_mm_cooling_heat) 0)
    ((:shooter_id_2_17_mm_cooling_heat __shooter_id_2_17_mm_cooling_heat) 0)
    ((:shooter_id_1_42_mm_cooling_heat __shooter_id_1_42_mm_cooling_heat) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _chassis_volt (float __chassis_volt))
   (setq _chassis_current (float __chassis_current))
   (setq _chassis_power (float __chassis_power))
   (setq _chassis_power_buffer (round __chassis_power_buffer))
   (setq _shooter_id_1_17_mm_cooling_heat (round __shooter_id_1_17_mm_cooling_heat))
   (setq _shooter_id_2_17_mm_cooling_heat (round __shooter_id_2_17_mm_cooling_heat))
   (setq _shooter_id_1_42_mm_cooling_heat (round __shooter_id_1_42_mm_cooling_heat))
   (setq _stamp __stamp)
   self)
  (:chassis_volt
   (&optional __chassis_volt)
   (if __chassis_volt (setq _chassis_volt __chassis_volt)) _chassis_volt)
  (:chassis_current
   (&optional __chassis_current)
   (if __chassis_current (setq _chassis_current __chassis_current)) _chassis_current)
  (:chassis_power
   (&optional __chassis_power)
   (if __chassis_power (setq _chassis_power __chassis_power)) _chassis_power)
  (:chassis_power_buffer
   (&optional __chassis_power_buffer)
   (if __chassis_power_buffer (setq _chassis_power_buffer __chassis_power_buffer)) _chassis_power_buffer)
  (:shooter_id_1_17_mm_cooling_heat
   (&optional __shooter_id_1_17_mm_cooling_heat)
   (if __shooter_id_1_17_mm_cooling_heat (setq _shooter_id_1_17_mm_cooling_heat __shooter_id_1_17_mm_cooling_heat)) _shooter_id_1_17_mm_cooling_heat)
  (:shooter_id_2_17_mm_cooling_heat
   (&optional __shooter_id_2_17_mm_cooling_heat)
   (if __shooter_id_2_17_mm_cooling_heat (setq _shooter_id_2_17_mm_cooling_heat __shooter_id_2_17_mm_cooling_heat)) _shooter_id_2_17_mm_cooling_heat)
  (:shooter_id_1_42_mm_cooling_heat
   (&optional __shooter_id_1_42_mm_cooling_heat)
   (if __shooter_id_1_42_mm_cooling_heat (setq _shooter_id_1_42_mm_cooling_heat __shooter_id_1_42_mm_cooling_heat)) _shooter_id_1_42_mm_cooling_heat)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float32 _chassis_volt
    4
    ;; float32 _chassis_current
    4
    ;; float32 _chassis_power
    4
    ;; uint16 _chassis_power_buffer
    2
    ;; uint16 _shooter_id_1_17_mm_cooling_heat
    2
    ;; uint16 _shooter_id_2_17_mm_cooling_heat
    2
    ;; uint16 _shooter_id_1_42_mm_cooling_heat
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _chassis_volt
       (sys::poke _chassis_volt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _chassis_current
       (sys::poke _chassis_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _chassis_power
       (sys::poke _chassis_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _chassis_power_buffer
       (write-word _chassis_power_buffer s)
     ;; uint16 _shooter_id_1_17_mm_cooling_heat
       (write-word _shooter_id_1_17_mm_cooling_heat s)
     ;; uint16 _shooter_id_2_17_mm_cooling_heat
       (write-word _shooter_id_2_17_mm_cooling_heat s)
     ;; uint16 _shooter_id_1_42_mm_cooling_heat
       (write-word _shooter_id_1_42_mm_cooling_heat s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _chassis_volt
     (setq _chassis_volt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _chassis_current
     (setq _chassis_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _chassis_power
     (setq _chassis_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _chassis_power_buffer
     (setq _chassis_power_buffer (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_17_mm_cooling_heat
     (setq _shooter_id_1_17_mm_cooling_heat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_2_17_mm_cooling_heat
     (setq _shooter_id_2_17_mm_cooling_heat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_42_mm_cooling_heat
     (setq _shooter_id_1_42_mm_cooling_heat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::PowerHeatData :md5sum-) "e95858fa10d84e626e18f0e745f78532")
(setf (get rm_msgs::PowerHeatData :datatype-) "rm_msgs/PowerHeatData")
(setf (get rm_msgs::PowerHeatData :definition-)
      "float32 chassis_volt
float32 chassis_current
float32 chassis_power
uint16 chassis_power_buffer
uint16 shooter_id_1_17_mm_cooling_heat
uint16 shooter_id_2_17_mm_cooling_heat
uint16 shooter_id_1_42_mm_cooling_heat

time stamp

")



(provide :rm_msgs/PowerHeatData "e95858fa10d84e626e18f0e745f78532")



;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ChassisCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ChassisCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CHASSISCMD")
  (make-package "RM_MSGS::CHASSISCMD"))

(in-package "ROS")
;;//! \htmlinclude ChassisCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*RAW*" (find-package "RM_MSGS::CHASSISCMD"))
(shadow '*RAW* (find-package "RM_MSGS::CHASSISCMD"))
(defconstant rm_msgs::ChassisCmd::*RAW* 0)
(intern "*FOLLOW*" (find-package "RM_MSGS::CHASSISCMD"))
(shadow '*FOLLOW* (find-package "RM_MSGS::CHASSISCMD"))
(defconstant rm_msgs::ChassisCmd::*FOLLOW* 1)
(intern "*GYRO*" (find-package "RM_MSGS::CHASSISCMD"))
(shadow '*GYRO* (find-package "RM_MSGS::CHASSISCMD"))
(defconstant rm_msgs::ChassisCmd::*GYRO* 2)
(intern "*TWIST*" (find-package "RM_MSGS::CHASSISCMD"))
(shadow '*TWIST* (find-package "RM_MSGS::CHASSISCMD"))
(defconstant rm_msgs::ChassisCmd::*TWIST* 3)
(defclass rm_msgs::ChassisCmd
  :super ros::object
  :slots (_mode _accel _power_limit _follow_source_frame _command_source_frame _stamp ))

(defmethod rm_msgs::ChassisCmd
  (:init
   (&key
    ((:mode __mode) 0)
    ((:accel __accel) (instance geometry_msgs::Accel :init))
    ((:power_limit __power_limit) 0.0)
    ((:follow_source_frame __follow_source_frame) "")
    ((:command_source_frame __command_source_frame) "")
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _accel __accel)
   (setq _power_limit (float __power_limit))
   (setq _follow_source_frame (string __follow_source_frame))
   (setq _command_source_frame (string __command_source_frame))
   (setq _stamp __stamp)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:power_limit
   (&optional __power_limit)
   (if __power_limit (setq _power_limit __power_limit)) _power_limit)
  (:follow_source_frame
   (&optional __follow_source_frame)
   (if __follow_source_frame (setq _follow_source_frame __follow_source_frame)) _follow_source_frame)
  (:command_source_frame
   (&optional __command_source_frame)
   (if __command_source_frame (setq _command_source_frame __command_source_frame)) _command_source_frame)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; geometry_msgs/Accel _accel
    (send _accel :serialization-length)
    ;; float64 _power_limit
    8
    ;; string _follow_source_frame
    4 (length _follow_source_frame)
    ;; string _command_source_frame
    4 (length _command_source_frame)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; geometry_msgs/Accel _accel
       (send _accel :serialize s)
     ;; float64 _power_limit
       (sys::poke _power_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _follow_source_frame
       (write-long (length _follow_source_frame) s) (princ _follow_source_frame s)
     ;; string _command_source_frame
       (write-long (length _command_source_frame) s) (princ _command_source_frame s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Accel _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; float64 _power_limit
     (setq _power_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _follow_source_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _follow_source_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command_source_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command_source_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ChassisCmd :md5sum-) "6328cffed58da8d33a54a5d480fb65fd")
(setf (get rm_msgs::ChassisCmd :datatype-) "rm_msgs/ChassisCmd")
(setf (get rm_msgs::ChassisCmd :definition-)
      "uint8 RAW = 0
uint8 FOLLOW = 1
uint8 GYRO = 2
uint8 TWIST = 3

uint8 mode
geometry_msgs/Accel accel
float64 power_limit
string follow_source_frame
string command_source_frame
time stamp

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rm_msgs/ChassisCmd "6328cffed58da8d33a54a5d480fb65fd")



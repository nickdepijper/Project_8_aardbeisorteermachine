;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::BalanceState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'BalanceState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::BALANCESTATE")
  (make-package "RM_MSGS::BALANCESTATE"))

(in-package "ROS")
;;//! \htmlinclude BalanceState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::BalanceState
  :super ros::object
  :slots (_header _alpha _alpha_dot _vel _theta_dot _control_1 _control_2 ))

(defmethod rm_msgs::BalanceState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:alpha __alpha) 0.0)
    ((:alpha_dot __alpha_dot) 0.0)
    ((:vel __vel) 0.0)
    ((:theta_dot __theta_dot) 0.0)
    ((:control_1 __control_1) 0.0)
    ((:control_2 __control_2) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _alpha (float __alpha))
   (setq _alpha_dot (float __alpha_dot))
   (setq _vel (float __vel))
   (setq _theta_dot (float __theta_dot))
   (setq _control_1 (float __control_1))
   (setq _control_2 (float __control_2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:alpha_dot
   (&optional __alpha_dot)
   (if __alpha_dot (setq _alpha_dot __alpha_dot)) _alpha_dot)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:theta_dot
   (&optional __theta_dot)
   (if __theta_dot (setq _theta_dot __theta_dot)) _theta_dot)
  (:control_1
   (&optional __control_1)
   (if __control_1 (setq _control_1 __control_1)) _control_1)
  (:control_2
   (&optional __control_2)
   (if __control_2 (setq _control_2 __control_2)) _control_2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _alpha
    8
    ;; float64 _alpha_dot
    8
    ;; float64 _vel
    8
    ;; float64 _theta_dot
    8
    ;; float64 _control_1
    8
    ;; float64 _control_2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alpha_dot
       (sys::poke _alpha_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_dot
       (sys::poke _theta_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _control_1
       (sys::poke _control_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _control_2
       (sys::poke _control_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _alpha
     (setq _alpha (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alpha_dot
     (setq _alpha_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_dot
     (setq _theta_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _control_1
     (setq _control_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _control_2
     (setq _control_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rm_msgs::BalanceState :md5sum-) "54fad2a9c502654a43a195c5bf42346b")
(setf (get rm_msgs::BalanceState :datatype-) "rm_msgs/BalanceState")
(setf (get rm_msgs::BalanceState :definition-)
      "std_msgs/Header header

float64 alpha
float64 alpha_dot
float64 vel
float64 theta_dot
float64 control_1
float64 control_2

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rm_msgs/BalanceState "54fad2a9c502654a43a195c5bf42346b")



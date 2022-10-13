;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::TrackData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'TrackData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::TRACKDATA")
  (make-package "RM_MSGS::TRACKDATA"))

(in-package "ROS")
;;//! \htmlinclude TrackData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::TrackData
  :super ros::object
  :slots (_header _id _target_pos _target_vel ))

(defmethod rm_msgs::TrackData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:target_pos __target_pos) (instance geometry_msgs::Point :init))
    ((:target_vel __target_vel) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _target_pos __target_pos)
   (setq _target_vel __target_vel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:target_pos
   (&rest __target_pos)
   (if (keywordp (car __target_pos))
       (send* _target_pos __target_pos)
     (progn
       (if __target_pos (setq _target_pos (car __target_pos)))
       _target_pos)))
  (:target_vel
   (&rest __target_vel)
   (if (keywordp (car __target_vel))
       (send* _target_vel __target_vel)
     (progn
       (if __target_vel (setq _target_vel (car __target_vel)))
       _target_vel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _id
    1
    ;; geometry_msgs/Point _target_pos
    (send _target_pos :serialization-length)
    ;; geometry_msgs/Vector3 _target_vel
    (send _target_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _id
       (write-byte _id s)
     ;; geometry_msgs/Point _target_pos
       (send _target_pos :serialize s)
     ;; geometry_msgs/Vector3 _target_vel
       (send _target_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point _target_pos
     (send _target_pos :deserialize buf ptr-) (incf ptr- (send _target_pos :serialization-length))
   ;; geometry_msgs/Vector3 _target_vel
     (send _target_vel :deserialize buf ptr-) (incf ptr- (send _target_vel :serialization-length))
   ;;
   self)
  )

(setf (get rm_msgs::TrackData :md5sum-) "5958bfc9dd35e926778542c63b3985b6")
(setf (get rm_msgs::TrackData :datatype-) "rm_msgs/TrackData")
(setf (get rm_msgs::TrackData :definition-)
      "std_msgs/Header header
uint8 id
geometry_msgs/Point target_pos
geometry_msgs/Vector3 target_vel

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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



(provide :rm_msgs/TrackData "5958bfc9dd35e926778542c63b3985b6")



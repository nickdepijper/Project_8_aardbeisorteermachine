; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude TrackData.msg.html

(cl:defclass <TrackData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (target_pos
    :reader target_pos
    :initarg :target_pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (target_vel
    :reader target_vel
    :initarg :target_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass TrackData (<TrackData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<TrackData> is deprecated: use rm_msgs-msg:TrackData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:header-val is deprecated.  Use rm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrackData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:id-val is deprecated.  Use rm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <TrackData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_pos-val is deprecated.  Use rm_msgs-msg:target_pos instead.")
  (target_pos m))

(cl:ensure-generic-function 'target_vel-val :lambda-list '(m))
(cl:defmethod target_vel-val ((m <TrackData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_vel-val is deprecated.  Use rm_msgs-msg:target_vel instead.")
  (target_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackData>) ostream)
  "Serializes a message object of type '<TrackData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackData>) istream)
  "Deserializes a message object of type '<TrackData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackData>)))
  "Returns string type for a message object of type '<TrackData>"
  "rm_msgs/TrackData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackData)))
  "Returns string type for a message object of type 'TrackData"
  "rm_msgs/TrackData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackData>)))
  "Returns md5sum for a message object of type '<TrackData>"
  "5958bfc9dd35e926778542c63b3985b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackData)))
  "Returns md5sum for a message object of type 'TrackData"
  "5958bfc9dd35e926778542c63b3985b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackData>)))
  "Returns full string definition for message of type '<TrackData>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 id~%geometry_msgs/Point target_pos~%geometry_msgs/Vector3 target_vel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackData)))
  "Returns full string definition for message of type 'TrackData"
  (cl:format cl:nil "std_msgs/Header header~%uint8 id~%geometry_msgs/Point target_pos~%geometry_msgs/Vector3 target_vel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackData>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackData
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':target_pos (target_pos msg))
    (cl:cons ':target_vel (target_vel msg))
))

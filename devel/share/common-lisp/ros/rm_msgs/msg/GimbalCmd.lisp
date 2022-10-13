; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude GimbalCmd.msg.html

(cl:defclass <GimbalCmd> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (rate_yaw
    :reader rate_yaw
    :initarg :rate_yaw
    :type cl:float
    :initform 0.0)
   (rate_pitch
    :reader rate_pitch
    :initarg :rate_pitch
    :type cl:float
    :initform 0.0)
   (bullet_speed
    :reader bullet_speed
    :initarg :bullet_speed
    :type cl:float
    :initform 0.0)
   (target_pos
    :reader target_pos
    :initarg :target_pos
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass GimbalCmd (<GimbalCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<GimbalCmd> is deprecated: use rm_msgs-msg:GimbalCmd instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GimbalCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GimbalCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'rate_yaw-val :lambda-list '(m))
(cl:defmethod rate_yaw-val ((m <GimbalCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:rate_yaw-val is deprecated.  Use rm_msgs-msg:rate_yaw instead.")
  (rate_yaw m))

(cl:ensure-generic-function 'rate_pitch-val :lambda-list '(m))
(cl:defmethod rate_pitch-val ((m <GimbalCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:rate_pitch-val is deprecated.  Use rm_msgs-msg:rate_pitch instead.")
  (rate_pitch m))

(cl:ensure-generic-function 'bullet_speed-val :lambda-list '(m))
(cl:defmethod bullet_speed-val ((m <GimbalCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_speed-val is deprecated.  Use rm_msgs-msg:bullet_speed instead.")
  (bullet_speed m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <GimbalCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_pos-val is deprecated.  Use rm_msgs-msg:target_pos instead.")
  (target_pos m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GimbalCmd>)))
    "Constants for message type '<GimbalCmd>"
  '((:RATE . 0)
    (:TRACK . 1)
    (:DIRECT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GimbalCmd)))
    "Constants for message type 'GimbalCmd"
  '((:RATE . 0)
    (:TRACK . 1)
    (:DIRECT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalCmd>) ostream)
  "Serializes a message object of type '<GimbalCmd>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rate_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rate_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bullet_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalCmd>) istream)
  "Deserializes a message object of type '<GimbalCmd>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bullet_speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalCmd>)))
  "Returns string type for a message object of type '<GimbalCmd>"
  "rm_msgs/GimbalCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalCmd)))
  "Returns string type for a message object of type 'GimbalCmd"
  "rm_msgs/GimbalCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalCmd>)))
  "Returns md5sum for a message object of type '<GimbalCmd>"
  "8bed4be5d11eafc7b7a7b054096b4208")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalCmd)))
  "Returns md5sum for a message object of type 'GimbalCmd"
  "8bed4be5d11eafc7b7a7b054096b4208")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalCmd>)))
  "Returns full string definition for message of type '<GimbalCmd>"
  (cl:format cl:nil "uint8 RATE = 0~%uint8 TRACK = 1~%uint8 DIRECT = 2~%~%time stamp~%uint8 mode~%~%# RATE~%float64 rate_yaw~%float64 rate_pitch~%~%# TRACK/DIRECT~%float64 bullet_speed~%geometry_msgs/PointStamped target_pos~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalCmd)))
  "Returns full string definition for message of type 'GimbalCmd"
  (cl:format cl:nil "uint8 RATE = 0~%uint8 TRACK = 1~%uint8 DIRECT = 2~%~%time stamp~%uint8 mode~%~%# RATE~%float64 rate_yaw~%float64 rate_pitch~%~%# TRACK/DIRECT~%float64 bullet_speed~%geometry_msgs/PointStamped target_pos~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalCmd>))
  (cl:+ 0
     8
     1
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalCmd
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':rate_yaw (rate_yaw msg))
    (cl:cons ':rate_pitch (rate_pitch msg))
    (cl:cons ':bullet_speed (bullet_speed msg))
    (cl:cons ':target_pos (target_pos msg))
))

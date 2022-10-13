; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude DartRemainingTime.msg.html

(cl:defclass <DartRemainingTime> (roslisp-msg-protocol:ros-message)
  ((dart_remaining_time
    :reader dart_remaining_time
    :initarg :dart_remaining_time
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass DartRemainingTime (<DartRemainingTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DartRemainingTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DartRemainingTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<DartRemainingTime> is deprecated: use rm_msgs-msg:DartRemainingTime instead.")))

(cl:ensure-generic-function 'dart_remaining_time-val :lambda-list '(m))
(cl:defmethod dart_remaining_time-val ((m <DartRemainingTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_remaining_time-val is deprecated.  Use rm_msgs-msg:dart_remaining_time instead.")
  (dart_remaining_time m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DartRemainingTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DartRemainingTime>) ostream)
  "Serializes a message object of type '<DartRemainingTime>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_remaining_time)) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DartRemainingTime>) istream)
  "Deserializes a message object of type '<DartRemainingTime>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_remaining_time)) (cl:read-byte istream))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DartRemainingTime>)))
  "Returns string type for a message object of type '<DartRemainingTime>"
  "rm_msgs/DartRemainingTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DartRemainingTime)))
  "Returns string type for a message object of type 'DartRemainingTime"
  "rm_msgs/DartRemainingTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DartRemainingTime>)))
  "Returns md5sum for a message object of type '<DartRemainingTime>"
  "a87dddfc4b0db93aa520d66f9e7e8df5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DartRemainingTime)))
  "Returns md5sum for a message object of type 'DartRemainingTime"
  "a87dddfc4b0db93aa520d66f9e7e8df5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DartRemainingTime>)))
  "Returns full string definition for message of type '<DartRemainingTime>"
  (cl:format cl:nil "uint8 dart_remaining_time~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DartRemainingTime)))
  "Returns full string definition for message of type 'DartRemainingTime"
  (cl:format cl:nil "uint8 dart_remaining_time~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DartRemainingTime>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DartRemainingTime>))
  "Converts a ROS message object to a list"
  (cl:list 'DartRemainingTime
    (cl:cons ':dart_remaining_time (dart_remaining_time msg))
    (cl:cons ':stamp (stamp msg))
))

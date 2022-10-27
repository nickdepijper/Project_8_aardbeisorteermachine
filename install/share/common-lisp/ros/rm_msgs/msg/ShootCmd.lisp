; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ShootCmd.msg.html

(cl:defclass <ShootCmd> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (hz
    :reader hz
    :initarg :hz
    :type cl:float
    :initform 0.0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ShootCmd (<ShootCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ShootCmd> is deprecated: use rm_msgs-msg:ShootCmd instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:speed-val is deprecated.  Use rm_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'hz-val :lambda-list '(m))
(cl:defmethod hz-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hz-val is deprecated.  Use rm_msgs-msg:hz instead.")
  (hz m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ShootCmd>)))
    "Constants for message type '<ShootCmd>"
  '((:STOP . 0)
    (:READY . 1)
    (:PUSH . 2)
    (:SPEED_ZERO_FOR_TEST . 0)
    (:SPEED_10M_PER_SECOND . 1)
    (:SPEED_15M_PER_SECOND . 2)
    (:SPEED_16M_PER_SECOND . 3)
    (:SPEED_18M_PER_SECOND . 4)
    (:SPEED_30M_PER_SECOND . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ShootCmd)))
    "Constants for message type 'ShootCmd"
  '((:STOP . 0)
    (:READY . 1)
    (:PUSH . 2)
    (:SPEED_ZERO_FOR_TEST . 0)
    (:SPEED_10M_PER_SECOND . 1)
    (:SPEED_15M_PER_SECOND . 2)
    (:SPEED_16M_PER_SECOND . 3)
    (:SPEED_18M_PER_SECOND . 4)
    (:SPEED_30M_PER_SECOND . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootCmd>) ostream)
  "Serializes a message object of type '<ShootCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootCmd>) istream)
  "Deserializes a message object of type '<ShootCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hz) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootCmd>)))
  "Returns string type for a message object of type '<ShootCmd>"
  "rm_msgs/ShootCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootCmd)))
  "Returns string type for a message object of type 'ShootCmd"
  "rm_msgs/ShootCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootCmd>)))
  "Returns md5sum for a message object of type '<ShootCmd>"
  "b25a3c00a92bb8eead2eb72002d6d2f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootCmd)))
  "Returns md5sum for a message object of type 'ShootCmd"
  "b25a3c00a92bb8eead2eb72002d6d2f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootCmd>)))
  "Returns full string definition for message of type '<ShootCmd>"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 READY = 1~%uint8 PUSH = 2~%~%uint8 SPEED_ZERO_FOR_TEST = 0~%uint8 SPEED_10M_PER_SECOND = 1~%uint8 SPEED_15M_PER_SECOND = 2~%uint8 SPEED_16M_PER_SECOND = 3~%uint8 SPEED_18M_PER_SECOND = 4~%uint8 SPEED_30M_PER_SECOND = 5~%~%uint8 mode~%uint8 speed~%float64 hz~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootCmd)))
  "Returns full string definition for message of type 'ShootCmd"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 READY = 1~%uint8 PUSH = 2~%~%uint8 SPEED_ZERO_FOR_TEST = 0~%uint8 SPEED_10M_PER_SECOND = 1~%uint8 SPEED_15M_PER_SECOND = 2~%uint8 SPEED_16M_PER_SECOND = 3~%uint8 SPEED_18M_PER_SECOND = 4~%uint8 SPEED_30M_PER_SECOND = 5~%~%uint8 mode~%uint8 speed~%float64 hz~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootCmd>))
  (cl:+ 0
     1
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootCmd
    (cl:cons ':mode (mode msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':hz (hz msg))
    (cl:cons ':stamp (stamp msg))
))

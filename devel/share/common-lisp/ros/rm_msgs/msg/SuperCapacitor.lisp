; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude SuperCapacitor.msg.html

(cl:defclass <SuperCapacitor> (roslisp-msg-protocol:ros-message)
  ((capacity
    :reader capacity
    :initarg :capacity
    :type cl:float
    :initform 0.0)
   (limit_power
    :reader limit_power
    :initarg :limit_power
    :type cl:float
    :initform 0.0)
   (chassis_power
    :reader chassis_power
    :initarg :chassis_power
    :type cl:float
    :initform 0.0)
   (chassis_power_buffer
    :reader chassis_power_buffer
    :initarg :chassis_power_buffer
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass SuperCapacitor (<SuperCapacitor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuperCapacitor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuperCapacitor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<SuperCapacitor> is deprecated: use rm_msgs-msg:SuperCapacitor instead.")))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <SuperCapacitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:capacity-val is deprecated.  Use rm_msgs-msg:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'limit_power-val :lambda-list '(m))
(cl:defmethod limit_power-val ((m <SuperCapacitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:limit_power-val is deprecated.  Use rm_msgs-msg:limit_power instead.")
  (limit_power m))

(cl:ensure-generic-function 'chassis_power-val :lambda-list '(m))
(cl:defmethod chassis_power-val ((m <SuperCapacitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:chassis_power-val is deprecated.  Use rm_msgs-msg:chassis_power instead.")
  (chassis_power m))

(cl:ensure-generic-function 'chassis_power_buffer-val :lambda-list '(m))
(cl:defmethod chassis_power_buffer-val ((m <SuperCapacitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:chassis_power_buffer-val is deprecated.  Use rm_msgs-msg:chassis_power_buffer instead.")
  (chassis_power_buffer m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <SuperCapacitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuperCapacitor>) ostream)
  "Serializes a message object of type '<SuperCapacitor>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'limit_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'chassis_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_power_buffer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chassis_power_buffer)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuperCapacitor>) istream)
  "Deserializes a message object of type '<SuperCapacitor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chassis_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_power_buffer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chassis_power_buffer)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuperCapacitor>)))
  "Returns string type for a message object of type '<SuperCapacitor>"
  "rm_msgs/SuperCapacitor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuperCapacitor)))
  "Returns string type for a message object of type 'SuperCapacitor"
  "rm_msgs/SuperCapacitor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuperCapacitor>)))
  "Returns md5sum for a message object of type '<SuperCapacitor>"
  "95558de4e002ee575de7525116e2b0a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuperCapacitor)))
  "Returns md5sum for a message object of type 'SuperCapacitor"
  "95558de4e002ee575de7525116e2b0a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuperCapacitor>)))
  "Returns full string definition for message of type '<SuperCapacitor>"
  (cl:format cl:nil "float32 capacity~%float32 limit_power~%float32 chassis_power~%uint16 chassis_power_buffer~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuperCapacitor)))
  "Returns full string definition for message of type 'SuperCapacitor"
  (cl:format cl:nil "float32 capacity~%float32 limit_power~%float32 chassis_power~%uint16 chassis_power_buffer~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuperCapacitor>))
  (cl:+ 0
     4
     4
     4
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuperCapacitor>))
  "Converts a ROS message object to a list"
  (cl:list 'SuperCapacitor
    (cl:cons ':capacity (capacity msg))
    (cl:cons ':limit_power (limit_power msg))
    (cl:cons ':chassis_power (chassis_power msg))
    (cl:cons ':chassis_power_buffer (chassis_power_buffer msg))
    (cl:cons ':stamp (stamp msg))
))

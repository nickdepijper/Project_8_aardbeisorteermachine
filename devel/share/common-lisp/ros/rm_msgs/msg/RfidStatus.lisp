; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RfidStatus.msg.html

(cl:defclass <RfidStatus> (roslisp-msg-protocol:ros-message)
  ((rfid_status
    :reader rfid_status
    :initarg :rfid_status
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass RfidStatus (<RfidStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfidStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfidStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RfidStatus> is deprecated: use rm_msgs-msg:RfidStatus instead.")))

(cl:ensure-generic-function 'rfid_status-val :lambda-list '(m))
(cl:defmethod rfid_status-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:rfid_status-val is deprecated.  Use rm_msgs-msg:rfid_status instead.")
  (rfid_status m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfidStatus>) ostream)
  "Serializes a message object of type '<RfidStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfid_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfid_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rfid_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rfid_status)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfidStatus>) istream)
  "Deserializes a message object of type '<RfidStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfid_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfid_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rfid_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rfid_status)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfidStatus>)))
  "Returns string type for a message object of type '<RfidStatus>"
  "rm_msgs/RfidStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfidStatus)))
  "Returns string type for a message object of type 'RfidStatus"
  "rm_msgs/RfidStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfidStatus>)))
  "Returns md5sum for a message object of type '<RfidStatus>"
  "778ccf0329dbf9adf1847960b71a0e1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfidStatus)))
  "Returns md5sum for a message object of type 'RfidStatus"
  "778ccf0329dbf9adf1847960b71a0e1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfidStatus>)))
  "Returns full string definition for message of type '<RfidStatus>"
  (cl:format cl:nil "uint32 rfid_status~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfidStatus)))
  "Returns full string definition for message of type 'RfidStatus"
  (cl:format cl:nil "uint32 rfid_status~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfidStatus>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfidStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RfidStatus
    (cl:cons ':rfid_status (rfid_status msg))
    (cl:cons ':stamp (stamp msg))
))

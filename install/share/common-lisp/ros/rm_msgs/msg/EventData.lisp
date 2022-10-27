; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude EventData.msg.html

(cl:defclass <EventData> (roslisp-msg-protocol:ros-message)
  ((event_data
    :reader event_data
    :initarg :event_data
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass EventData (<EventData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<EventData> is deprecated: use rm_msgs-msg:EventData instead.")))

(cl:ensure-generic-function 'event_data-val :lambda-list '(m))
(cl:defmethod event_data-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:event_data-val is deprecated.  Use rm_msgs-msg:event_data instead.")
  (event_data m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventData>) ostream)
  "Serializes a message object of type '<EventData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'event_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'event_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'event_data)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventData>) istream)
  "Deserializes a message object of type '<EventData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'event_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'event_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'event_data)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventData>)))
  "Returns string type for a message object of type '<EventData>"
  "rm_msgs/EventData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventData)))
  "Returns string type for a message object of type 'EventData"
  "rm_msgs/EventData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventData>)))
  "Returns md5sum for a message object of type '<EventData>"
  "8f890b4066f7d01e6952e8bcecdd2c16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventData)))
  "Returns md5sum for a message object of type 'EventData"
  "8f890b4066f7d01e6952e8bcecdd2c16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventData>)))
  "Returns full string definition for message of type '<EventData>"
  (cl:format cl:nil "uint32 event_data~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventData)))
  "Returns full string definition for message of type 'EventData"
  (cl:format cl:nil "uint32 event_data~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventData>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventData>))
  "Converts a ROS message object to a list"
  (cl:list 'EventData
    (cl:cons ':event_data (event_data msg))
    (cl:cons ':stamp (stamp msg))
))

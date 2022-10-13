; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Referee.msg.html

(cl:defclass <Referee> (roslisp-msg-protocol:ros-message)
  ((is_online
    :reader is_online
    :initarg :is_online
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass Referee (<Referee>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Referee>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Referee)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Referee> is deprecated: use rm_msgs-msg:Referee instead.")))

(cl:ensure-generic-function 'is_online-val :lambda-list '(m))
(cl:defmethod is_online-val ((m <Referee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:is_online-val is deprecated.  Use rm_msgs-msg:is_online instead.")
  (is_online m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Referee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Referee>) ostream)
  "Serializes a message object of type '<Referee>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_online) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Referee>) istream)
  "Deserializes a message object of type '<Referee>"
    (cl:setf (cl:slot-value msg 'is_online) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Referee>)))
  "Returns string type for a message object of type '<Referee>"
  "rm_msgs/Referee")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Referee)))
  "Returns string type for a message object of type 'Referee"
  "rm_msgs/Referee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Referee>)))
  "Returns md5sum for a message object of type '<Referee>"
  "407bdd83433e865cfa74911de122ad5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Referee)))
  "Returns md5sum for a message object of type 'Referee"
  "407bdd83433e865cfa74911de122ad5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Referee>)))
  "Returns full string definition for message of type '<Referee>"
  (cl:format cl:nil "bool is_online~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Referee)))
  "Returns full string definition for message of type 'Referee"
  (cl:format cl:nil "bool is_online~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Referee>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Referee>))
  "Converts a ROS message object to a list"
  (cl:list 'Referee
    (cl:cons ':is_online (is_online msg))
    (cl:cons ':stamp (stamp msg))
))

; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude BulletRemaining.msg.html

(cl:defclass <BulletRemaining> (roslisp-msg-protocol:ros-message)
  ((bullet_remaining_num_17_mm
    :reader bullet_remaining_num_17_mm
    :initarg :bullet_remaining_num_17_mm
    :type cl:fixnum
    :initform 0)
   (bullet_remaining_num_42_mm
    :reader bullet_remaining_num_42_mm
    :initarg :bullet_remaining_num_42_mm
    :type cl:fixnum
    :initform 0)
   (coin_remaining_num
    :reader coin_remaining_num
    :initarg :coin_remaining_num
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass BulletRemaining (<BulletRemaining>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BulletRemaining>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BulletRemaining)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<BulletRemaining> is deprecated: use rm_msgs-msg:BulletRemaining instead.")))

(cl:ensure-generic-function 'bullet_remaining_num_17_mm-val :lambda-list '(m))
(cl:defmethod bullet_remaining_num_17_mm-val ((m <BulletRemaining>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_remaining_num_17_mm-val is deprecated.  Use rm_msgs-msg:bullet_remaining_num_17_mm instead.")
  (bullet_remaining_num_17_mm m))

(cl:ensure-generic-function 'bullet_remaining_num_42_mm-val :lambda-list '(m))
(cl:defmethod bullet_remaining_num_42_mm-val ((m <BulletRemaining>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_remaining_num_42_mm-val is deprecated.  Use rm_msgs-msg:bullet_remaining_num_42_mm instead.")
  (bullet_remaining_num_42_mm m))

(cl:ensure-generic-function 'coin_remaining_num-val :lambda-list '(m))
(cl:defmethod coin_remaining_num-val ((m <BulletRemaining>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:coin_remaining_num-val is deprecated.  Use rm_msgs-msg:coin_remaining_num instead.")
  (coin_remaining_num m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BulletRemaining>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BulletRemaining>) ostream)
  "Serializes a message object of type '<BulletRemaining>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_remaining_num_17_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_remaining_num_17_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_remaining_num_42_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_remaining_num_42_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coin_remaining_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coin_remaining_num)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BulletRemaining>) istream)
  "Deserializes a message object of type '<BulletRemaining>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_remaining_num_17_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_remaining_num_17_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_remaining_num_42_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_remaining_num_42_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coin_remaining_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coin_remaining_num)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BulletRemaining>)))
  "Returns string type for a message object of type '<BulletRemaining>"
  "rm_msgs/BulletRemaining")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BulletRemaining)))
  "Returns string type for a message object of type 'BulletRemaining"
  "rm_msgs/BulletRemaining")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BulletRemaining>)))
  "Returns md5sum for a message object of type '<BulletRemaining>"
  "43e123a32cc9ba99f4b185dfa52ac9e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BulletRemaining)))
  "Returns md5sum for a message object of type 'BulletRemaining"
  "43e123a32cc9ba99f4b185dfa52ac9e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BulletRemaining>)))
  "Returns full string definition for message of type '<BulletRemaining>"
  (cl:format cl:nil "uint16 bullet_remaining_num_17_mm~%uint16 bullet_remaining_num_42_mm~%uint16 coin_remaining_num~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BulletRemaining)))
  "Returns full string definition for message of type 'BulletRemaining"
  (cl:format cl:nil "uint16 bullet_remaining_num_17_mm~%uint16 bullet_remaining_num_42_mm~%uint16 coin_remaining_num~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BulletRemaining>))
  (cl:+ 0
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BulletRemaining>))
  "Converts a ROS message object to a list"
  (cl:list 'BulletRemaining
    (cl:cons ':bullet_remaining_num_17_mm (bullet_remaining_num_17_mm msg))
    (cl:cons ':bullet_remaining_num_42_mm (bullet_remaining_num_42_mm msg))
    (cl:cons ':coin_remaining_num (coin_remaining_num msg))
    (cl:cons ':stamp (stamp msg))
))

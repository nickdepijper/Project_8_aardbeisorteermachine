; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude EngineerCmd.msg.html

(cl:defclass <EngineerCmd> (roslisp-msg-protocol:ros-message)
  ((current_step_name
    :reader current_step_name
    :initarg :current_step_name
    :type cl:string
    :initform "")
   (finished_step
    :reader finished_step
    :initarg :finished_step
    :type cl:integer
    :initform 0)
   (total_steps
    :reader total_steps
    :initarg :total_steps
    :type cl:integer
    :initform 0)
   (step_queue_name
    :reader step_queue_name
    :initarg :step_queue_name
    :type cl:string
    :initform "")
   (symbol
    :reader symbol
    :initarg :symbol
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass EngineerCmd (<EngineerCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EngineerCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EngineerCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<EngineerCmd> is deprecated: use rm_msgs-msg:EngineerCmd instead.")))

(cl:ensure-generic-function 'current_step_name-val :lambda-list '(m))
(cl:defmethod current_step_name-val ((m <EngineerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:current_step_name-val is deprecated.  Use rm_msgs-msg:current_step_name instead.")
  (current_step_name m))

(cl:ensure-generic-function 'finished_step-val :lambda-list '(m))
(cl:defmethod finished_step-val ((m <EngineerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:finished_step-val is deprecated.  Use rm_msgs-msg:finished_step instead.")
  (finished_step m))

(cl:ensure-generic-function 'total_steps-val :lambda-list '(m))
(cl:defmethod total_steps-val ((m <EngineerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:total_steps-val is deprecated.  Use rm_msgs-msg:total_steps instead.")
  (total_steps m))

(cl:ensure-generic-function 'step_queue_name-val :lambda-list '(m))
(cl:defmethod step_queue_name-val ((m <EngineerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:step_queue_name-val is deprecated.  Use rm_msgs-msg:step_queue_name instead.")
  (step_queue_name m))

(cl:ensure-generic-function 'symbol-val :lambda-list '(m))
(cl:defmethod symbol-val ((m <EngineerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:symbol-val is deprecated.  Use rm_msgs-msg:symbol instead.")
  (symbol m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <EngineerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EngineerCmd>) ostream)
  "Serializes a message object of type '<EngineerCmd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_step_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_step_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finished_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'finished_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'finished_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'finished_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_steps)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'step_queue_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'step_queue_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'symbol) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EngineerCmd>) istream)
  "Deserializes a message object of type '<EngineerCmd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_step_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_step_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finished_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'finished_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'finished_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'finished_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_steps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_steps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_steps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_steps)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step_queue_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'step_queue_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'symbol) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EngineerCmd>)))
  "Returns string type for a message object of type '<EngineerCmd>"
  "rm_msgs/EngineerCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EngineerCmd)))
  "Returns string type for a message object of type 'EngineerCmd"
  "rm_msgs/EngineerCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EngineerCmd>)))
  "Returns md5sum for a message object of type '<EngineerCmd>"
  "99c50feb8f06ee5ae16f37b16ca0b9f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EngineerCmd)))
  "Returns md5sum for a message object of type 'EngineerCmd"
  "99c50feb8f06ee5ae16f37b16ca0b9f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EngineerCmd>)))
  "Returns full string definition for message of type '<EngineerCmd>"
  (cl:format cl:nil "string current_step_name~%uint32 finished_step~%uint32 total_steps~%~%string step_queue_name~%bool symbol~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EngineerCmd)))
  "Returns full string definition for message of type 'EngineerCmd"
  (cl:format cl:nil "string current_step_name~%uint32 finished_step~%uint32 total_steps~%~%string step_queue_name~%bool symbol~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EngineerCmd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_step_name))
     4
     4
     4 (cl:length (cl:slot-value msg 'step_queue_name))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EngineerCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'EngineerCmd
    (cl:cons ':current_step_name (current_step_name msg))
    (cl:cons ':finished_step (finished_step msg))
    (cl:cons ':total_steps (total_steps msg))
    (cl:cons ':step_queue_name (step_queue_name msg))
    (cl:cons ':symbol (symbol msg))
    (cl:cons ':stamp (stamp msg))
))

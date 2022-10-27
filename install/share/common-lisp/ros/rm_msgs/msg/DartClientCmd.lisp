; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude DartClientCmd.msg.html

(cl:defclass <DartClientCmd> (roslisp-msg-protocol:ros-message)
  ((dart_launch_opening_status
    :reader dart_launch_opening_status
    :initarg :dart_launch_opening_status
    :type cl:fixnum
    :initform 0)
   (dart_attack_target
    :reader dart_attack_target
    :initarg :dart_attack_target
    :type cl:fixnum
    :initform 0)
   (target_change_time
    :reader target_change_time
    :initarg :target_change_time
    :type cl:fixnum
    :initform 0)
   (first_dart_speed
    :reader first_dart_speed
    :initarg :first_dart_speed
    :type cl:fixnum
    :initform 0)
   (second_dart_speed
    :reader second_dart_speed
    :initarg :second_dart_speed
    :type cl:fixnum
    :initform 0)
   (third_dart_speed
    :reader third_dart_speed
    :initarg :third_dart_speed
    :type cl:fixnum
    :initform 0)
   (fourth_dart_speed
    :reader fourth_dart_speed
    :initarg :fourth_dart_speed
    :type cl:fixnum
    :initform 0)
   (last_dart_launch_time
    :reader last_dart_launch_time
    :initarg :last_dart_launch_time
    :type cl:fixnum
    :initform 0)
   (operate_launch_cmd_time
    :reader operate_launch_cmd_time
    :initarg :operate_launch_cmd_time
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass DartClientCmd (<DartClientCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DartClientCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DartClientCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<DartClientCmd> is deprecated: use rm_msgs-msg:DartClientCmd instead.")))

(cl:ensure-generic-function 'dart_launch_opening_status-val :lambda-list '(m))
(cl:defmethod dart_launch_opening_status-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_launch_opening_status-val is deprecated.  Use rm_msgs-msg:dart_launch_opening_status instead.")
  (dart_launch_opening_status m))

(cl:ensure-generic-function 'dart_attack_target-val :lambda-list '(m))
(cl:defmethod dart_attack_target-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_attack_target-val is deprecated.  Use rm_msgs-msg:dart_attack_target instead.")
  (dart_attack_target m))

(cl:ensure-generic-function 'target_change_time-val :lambda-list '(m))
(cl:defmethod target_change_time-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_change_time-val is deprecated.  Use rm_msgs-msg:target_change_time instead.")
  (target_change_time m))

(cl:ensure-generic-function 'first_dart_speed-val :lambda-list '(m))
(cl:defmethod first_dart_speed-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:first_dart_speed-val is deprecated.  Use rm_msgs-msg:first_dart_speed instead.")
  (first_dart_speed m))

(cl:ensure-generic-function 'second_dart_speed-val :lambda-list '(m))
(cl:defmethod second_dart_speed-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:second_dart_speed-val is deprecated.  Use rm_msgs-msg:second_dart_speed instead.")
  (second_dart_speed m))

(cl:ensure-generic-function 'third_dart_speed-val :lambda-list '(m))
(cl:defmethod third_dart_speed-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:third_dart_speed-val is deprecated.  Use rm_msgs-msg:third_dart_speed instead.")
  (third_dart_speed m))

(cl:ensure-generic-function 'fourth_dart_speed-val :lambda-list '(m))
(cl:defmethod fourth_dart_speed-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:fourth_dart_speed-val is deprecated.  Use rm_msgs-msg:fourth_dart_speed instead.")
  (fourth_dart_speed m))

(cl:ensure-generic-function 'last_dart_launch_time-val :lambda-list '(m))
(cl:defmethod last_dart_launch_time-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:last_dart_launch_time-val is deprecated.  Use rm_msgs-msg:last_dart_launch_time instead.")
  (last_dart_launch_time m))

(cl:ensure-generic-function 'operate_launch_cmd_time-val :lambda-list '(m))
(cl:defmethod operate_launch_cmd_time-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:operate_launch_cmd_time-val is deprecated.  Use rm_msgs-msg:operate_launch_cmd_time instead.")
  (operate_launch_cmd_time m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DartClientCmd>) ostream)
  "Serializes a message object of type '<DartClientCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_launch_opening_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_attack_target)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_change_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_change_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first_dart_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'second_dart_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'third_dart_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fourth_dart_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_dart_launch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_dart_launch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operate_launch_cmd_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'operate_launch_cmd_time)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DartClientCmd>) istream)
  "Deserializes a message object of type '<DartClientCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_launch_opening_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_attack_target)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_change_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_change_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first_dart_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'second_dart_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'third_dart_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fourth_dart_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_dart_launch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_dart_launch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operate_launch_cmd_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'operate_launch_cmd_time)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DartClientCmd>)))
  "Returns string type for a message object of type '<DartClientCmd>"
  "rm_msgs/DartClientCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DartClientCmd)))
  "Returns string type for a message object of type 'DartClientCmd"
  "rm_msgs/DartClientCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DartClientCmd>)))
  "Returns md5sum for a message object of type '<DartClientCmd>"
  "437595b17fc80be6e24b8cf8e3dabe1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DartClientCmd)))
  "Returns md5sum for a message object of type 'DartClientCmd"
  "437595b17fc80be6e24b8cf8e3dabe1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DartClientCmd>)))
  "Returns full string definition for message of type '<DartClientCmd>"
  (cl:format cl:nil "uint8 dart_launch_opening_status~%uint8 dart_attack_target~%uint16 target_change_time~%uint8 first_dart_speed~%uint8 second_dart_speed~%uint8 third_dart_speed~%uint8 fourth_dart_speed~%uint16 last_dart_launch_time~%uint16 operate_launch_cmd_time~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DartClientCmd)))
  "Returns full string definition for message of type 'DartClientCmd"
  (cl:format cl:nil "uint8 dart_launch_opening_status~%uint8 dart_attack_target~%uint16 target_change_time~%uint8 first_dart_speed~%uint8 second_dart_speed~%uint8 third_dart_speed~%uint8 fourth_dart_speed~%uint16 last_dart_launch_time~%uint16 operate_launch_cmd_time~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DartClientCmd>))
  (cl:+ 0
     1
     1
     2
     1
     1
     1
     1
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DartClientCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'DartClientCmd
    (cl:cons ':dart_launch_opening_status (dart_launch_opening_status msg))
    (cl:cons ':dart_attack_target (dart_attack_target msg))
    (cl:cons ':target_change_time (target_change_time msg))
    (cl:cons ':first_dart_speed (first_dart_speed msg))
    (cl:cons ':second_dart_speed (second_dart_speed msg))
    (cl:cons ':third_dart_speed (third_dart_speed msg))
    (cl:cons ':fourth_dart_speed (fourth_dart_speed msg))
    (cl:cons ':last_dart_launch_time (last_dart_launch_time msg))
    (cl:cons ':operate_launch_cmd_time (operate_launch_cmd_time msg))
    (cl:cons ':stamp (stamp msg))
))

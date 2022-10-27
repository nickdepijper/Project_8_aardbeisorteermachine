;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::EngineerCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'EngineerCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ENGINEERCMD")
  (make-package "RM_MSGS::ENGINEERCMD"))

(in-package "ROS")
;;//! \htmlinclude EngineerCmd.msg.html


(defclass rm_msgs::EngineerCmd
  :super ros::object
  :slots (_current_step_name _finished_step _total_steps _step_queue_name _symbol _stamp ))

(defmethod rm_msgs::EngineerCmd
  (:init
   (&key
    ((:current_step_name __current_step_name) "")
    ((:finished_step __finished_step) 0)
    ((:total_steps __total_steps) 0)
    ((:step_queue_name __step_queue_name) "")
    ((:symbol __symbol) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _current_step_name (string __current_step_name))
   (setq _finished_step (round __finished_step))
   (setq _total_steps (round __total_steps))
   (setq _step_queue_name (string __step_queue_name))
   (setq _symbol __symbol)
   (setq _stamp __stamp)
   self)
  (:current_step_name
   (&optional __current_step_name)
   (if __current_step_name (setq _current_step_name __current_step_name)) _current_step_name)
  (:finished_step
   (&optional __finished_step)
   (if __finished_step (setq _finished_step __finished_step)) _finished_step)
  (:total_steps
   (&optional __total_steps)
   (if __total_steps (setq _total_steps __total_steps)) _total_steps)
  (:step_queue_name
   (&optional __step_queue_name)
   (if __step_queue_name (setq _step_queue_name __step_queue_name)) _step_queue_name)
  (:symbol
   (&optional __symbol)
   (if __symbol (setq _symbol __symbol)) _symbol)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; string _current_step_name
    4 (length _current_step_name)
    ;; uint32 _finished_step
    4
    ;; uint32 _total_steps
    4
    ;; string _step_queue_name
    4 (length _step_queue_name)
    ;; bool _symbol
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_step_name
       (write-long (length _current_step_name) s) (princ _current_step_name s)
     ;; uint32 _finished_step
       (write-long _finished_step s)
     ;; uint32 _total_steps
       (write-long _total_steps s)
     ;; string _step_queue_name
       (write-long (length _step_queue_name) s) (princ _step_queue_name s)
     ;; bool _symbol
       (if _symbol (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_step_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_step_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _finished_step
     (setq _finished_step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _total_steps
     (setq _total_steps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _step_queue_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _step_queue_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _symbol
     (setq _symbol (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::EngineerCmd :md5sum-) "99c50feb8f06ee5ae16f37b16ca0b9f7")
(setf (get rm_msgs::EngineerCmd :datatype-) "rm_msgs/EngineerCmd")
(setf (get rm_msgs::EngineerCmd :definition-)
      "string current_step_name
uint32 finished_step
uint32 total_steps

string step_queue_name
bool symbol
time stamp

")



(provide :rm_msgs/EngineerCmd "99c50feb8f06ee5ae16f37b16ca0b9f7")



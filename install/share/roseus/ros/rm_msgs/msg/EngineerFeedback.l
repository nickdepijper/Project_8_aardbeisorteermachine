;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::EngineerFeedback)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'EngineerFeedback (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ENGINEERFEEDBACK")
  (make-package "RM_MSGS::ENGINEERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude EngineerFeedback.msg.html


(defclass rm_msgs::EngineerFeedback
  :super ros::object
  :slots (_total_steps _finished_step _current_step ))

(defmethod rm_msgs::EngineerFeedback
  (:init
   (&key
    ((:total_steps __total_steps) 0)
    ((:finished_step __finished_step) 0)
    ((:current_step __current_step) "")
    )
   (send-super :init)
   (setq _total_steps (round __total_steps))
   (setq _finished_step (round __finished_step))
   (setq _current_step (string __current_step))
   self)
  (:total_steps
   (&optional __total_steps)
   (if __total_steps (setq _total_steps __total_steps)) _total_steps)
  (:finished_step
   (&optional __finished_step)
   (if __finished_step (setq _finished_step __finished_step)) _finished_step)
  (:current_step
   (&optional __current_step)
   (if __current_step (setq _current_step __current_step)) _current_step)
  (:serialization-length
   ()
   (+
    ;; uint8 _total_steps
    1
    ;; uint8 _finished_step
    1
    ;; string _current_step
    4 (length _current_step)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _total_steps
       (write-byte _total_steps s)
     ;; uint8 _finished_step
       (write-byte _finished_step s)
     ;; string _current_step
       (write-long (length _current_step) s) (princ _current_step s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _total_steps
     (setq _total_steps (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _finished_step
     (setq _finished_step (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _current_step
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_step (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rm_msgs::EngineerFeedback :md5sum-) "87397c03e34e8b8835ff0de452ee02e3")
(setf (get rm_msgs::EngineerFeedback :datatype-) "rm_msgs/EngineerFeedback")
(setf (get rm_msgs::EngineerFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# feedback
uint8 total_steps
uint8 finished_step
string current_step


")



(provide :rm_msgs/EngineerFeedback "87397c03e34e8b8835ff0de452ee02e3")


;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Referee)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Referee (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::REFEREE")
  (make-package "RM_MSGS::REFEREE"))

(in-package "ROS")
;;//! \htmlinclude Referee.msg.html


(defclass rm_msgs::Referee
  :super ros::object
  :slots (_is_online _stamp ))

(defmethod rm_msgs::Referee
  (:init
   (&key
    ((:is_online __is_online) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _is_online __is_online)
   (setq _stamp __stamp)
   self)
  (:is_online
   (&optional __is_online)
   (if __is_online (setq _is_online __is_online)) _is_online)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; bool _is_online
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_online
       (if _is_online (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_online
     (setq _is_online (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::Referee :md5sum-) "407bdd83433e865cfa74911de122ad5c")
(setf (get rm_msgs::Referee :datatype-) "rm_msgs/Referee")
(setf (get rm_msgs::Referee :definition-)
      "bool is_online

time stamp

")



(provide :rm_msgs/Referee "407bdd83433e865cfa74911de122ad5c")



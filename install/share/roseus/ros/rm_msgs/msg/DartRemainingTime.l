;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::DartRemainingTime)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'DartRemainingTime (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::DARTREMAININGTIME")
  (make-package "RM_MSGS::DARTREMAININGTIME"))

(in-package "ROS")
;;//! \htmlinclude DartRemainingTime.msg.html


(defclass rm_msgs::DartRemainingTime
  :super ros::object
  :slots (_dart_remaining_time _stamp ))

(defmethod rm_msgs::DartRemainingTime
  (:init
   (&key
    ((:dart_remaining_time __dart_remaining_time) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _dart_remaining_time (round __dart_remaining_time))
   (setq _stamp __stamp)
   self)
  (:dart_remaining_time
   (&optional __dart_remaining_time)
   (if __dart_remaining_time (setq _dart_remaining_time __dart_remaining_time)) _dart_remaining_time)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _dart_remaining_time
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _dart_remaining_time
       (write-byte _dart_remaining_time s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _dart_remaining_time
     (setq _dart_remaining_time (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::DartRemainingTime :md5sum-) "a87dddfc4b0db93aa520d66f9e7e8df5")
(setf (get rm_msgs::DartRemainingTime :datatype-) "rm_msgs/DartRemainingTime")
(setf (get rm_msgs::DartRemainingTime :definition-)
      "uint8 dart_remaining_time

time stamp

")



(provide :rm_msgs/DartRemainingTime "a87dddfc4b0db93aa520d66f9e7e8df5")



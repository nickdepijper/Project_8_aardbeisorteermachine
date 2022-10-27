;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::EventData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'EventData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::EVENTDATA")
  (make-package "RM_MSGS::EVENTDATA"))

(in-package "ROS")
;;//! \htmlinclude EventData.msg.html


(defclass rm_msgs::EventData
  :super ros::object
  :slots (_event_data _stamp ))

(defmethod rm_msgs::EventData
  (:init
   (&key
    ((:event_data __event_data) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _event_data (round __event_data))
   (setq _stamp __stamp)
   self)
  (:event_data
   (&optional __event_data)
   (if __event_data (setq _event_data __event_data)) _event_data)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint32 _event_data
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _event_data
       (write-long _event_data s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _event_data
     (setq _event_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::EventData :md5sum-) "8f890b4066f7d01e6952e8bcecdd2c16")
(setf (get rm_msgs::EventData :datatype-) "rm_msgs/EventData")
(setf (get rm_msgs::EventData :definition-)
      "uint32 event_data

time stamp

")



(provide :rm_msgs/EventData "8f890b4066f7d01e6952e8bcecdd2c16")



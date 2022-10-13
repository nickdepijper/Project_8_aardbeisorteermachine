;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RfidStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RfidStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RFIDSTATUS")
  (make-package "RM_MSGS::RFIDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RfidStatus.msg.html


(defclass rm_msgs::RfidStatus
  :super ros::object
  :slots (_rfid_status _stamp ))

(defmethod rm_msgs::RfidStatus
  (:init
   (&key
    ((:rfid_status __rfid_status) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _rfid_status (round __rfid_status))
   (setq _stamp __stamp)
   self)
  (:rfid_status
   (&optional __rfid_status)
   (if __rfid_status (setq _rfid_status __rfid_status)) _rfid_status)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint32 _rfid_status
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _rfid_status
       (write-long _rfid_status s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _rfid_status
     (setq _rfid_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::RfidStatus :md5sum-) "778ccf0329dbf9adf1847960b71a0e1f")
(setf (get rm_msgs::RfidStatus :datatype-) "rm_msgs/RfidStatus")
(setf (get rm_msgs::RfidStatus :definition-)
      "uint32 rfid_status

time stamp

")



(provide :rm_msgs/RfidStatus "778ccf0329dbf9adf1847960b71a0e1f")



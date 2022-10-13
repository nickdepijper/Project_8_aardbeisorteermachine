;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::BulletRemaining)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'BulletRemaining (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::BULLETREMAINING")
  (make-package "RM_MSGS::BULLETREMAINING"))

(in-package "ROS")
;;//! \htmlinclude BulletRemaining.msg.html


(defclass rm_msgs::BulletRemaining
  :super ros::object
  :slots (_bullet_remaining_num_17_mm _bullet_remaining_num_42_mm _coin_remaining_num _stamp ))

(defmethod rm_msgs::BulletRemaining
  (:init
   (&key
    ((:bullet_remaining_num_17_mm __bullet_remaining_num_17_mm) 0)
    ((:bullet_remaining_num_42_mm __bullet_remaining_num_42_mm) 0)
    ((:coin_remaining_num __coin_remaining_num) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _bullet_remaining_num_17_mm (round __bullet_remaining_num_17_mm))
   (setq _bullet_remaining_num_42_mm (round __bullet_remaining_num_42_mm))
   (setq _coin_remaining_num (round __coin_remaining_num))
   (setq _stamp __stamp)
   self)
  (:bullet_remaining_num_17_mm
   (&optional __bullet_remaining_num_17_mm)
   (if __bullet_remaining_num_17_mm (setq _bullet_remaining_num_17_mm __bullet_remaining_num_17_mm)) _bullet_remaining_num_17_mm)
  (:bullet_remaining_num_42_mm
   (&optional __bullet_remaining_num_42_mm)
   (if __bullet_remaining_num_42_mm (setq _bullet_remaining_num_42_mm __bullet_remaining_num_42_mm)) _bullet_remaining_num_42_mm)
  (:coin_remaining_num
   (&optional __coin_remaining_num)
   (if __coin_remaining_num (setq _coin_remaining_num __coin_remaining_num)) _coin_remaining_num)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _bullet_remaining_num_17_mm
    2
    ;; uint16 _bullet_remaining_num_42_mm
    2
    ;; uint16 _coin_remaining_num
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _bullet_remaining_num_17_mm
       (write-word _bullet_remaining_num_17_mm s)
     ;; uint16 _bullet_remaining_num_42_mm
       (write-word _bullet_remaining_num_42_mm s)
     ;; uint16 _coin_remaining_num
       (write-word _coin_remaining_num s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _bullet_remaining_num_17_mm
     (setq _bullet_remaining_num_17_mm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _bullet_remaining_num_42_mm
     (setq _bullet_remaining_num_42_mm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _coin_remaining_num
     (setq _coin_remaining_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::BulletRemaining :md5sum-) "43e123a32cc9ba99f4b185dfa52ac9e7")
(setf (get rm_msgs::BulletRemaining :datatype-) "rm_msgs/BulletRemaining")
(setf (get rm_msgs::BulletRemaining :definition-)
      "uint16 bullet_remaining_num_17_mm
uint16 bullet_remaining_num_42_mm
uint16 coin_remaining_num

time stamp

")



(provide :rm_msgs/BulletRemaining "43e123a32cc9ba99f4b185dfa52ac9e7")



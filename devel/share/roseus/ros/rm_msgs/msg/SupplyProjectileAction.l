;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SupplyProjectileAction)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SupplyProjectileAction (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SUPPLYPROJECTILEACTION")
  (make-package "RM_MSGS::SUPPLYPROJECTILEACTION"))

(in-package "ROS")
;;//! \htmlinclude SupplyProjectileAction.msg.html


(defclass rm_msgs::SupplyProjectileAction
  :super ros::object
  :slots (_supply_projectile_id _supply_robot_id _supply_projectile_step _supply_projectile_num _stamp ))

(defmethod rm_msgs::SupplyProjectileAction
  (:init
   (&key
    ((:supply_projectile_id __supply_projectile_id) 0)
    ((:supply_robot_id __supply_robot_id) 0)
    ((:supply_projectile_step __supply_projectile_step) 0)
    ((:supply_projectile_num __supply_projectile_num) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _supply_projectile_id (round __supply_projectile_id))
   (setq _supply_robot_id (round __supply_robot_id))
   (setq _supply_projectile_step (round __supply_projectile_step))
   (setq _supply_projectile_num (round __supply_projectile_num))
   (setq _stamp __stamp)
   self)
  (:supply_projectile_id
   (&optional __supply_projectile_id)
   (if __supply_projectile_id (setq _supply_projectile_id __supply_projectile_id)) _supply_projectile_id)
  (:supply_robot_id
   (&optional __supply_robot_id)
   (if __supply_robot_id (setq _supply_robot_id __supply_robot_id)) _supply_robot_id)
  (:supply_projectile_step
   (&optional __supply_projectile_step)
   (if __supply_projectile_step (setq _supply_projectile_step __supply_projectile_step)) _supply_projectile_step)
  (:supply_projectile_num
   (&optional __supply_projectile_num)
   (if __supply_projectile_num (setq _supply_projectile_num __supply_projectile_num)) _supply_projectile_num)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _supply_projectile_id
    1
    ;; uint8 _supply_robot_id
    1
    ;; uint8 _supply_projectile_step
    1
    ;; uint8 _supply_projectile_num
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _supply_projectile_id
       (write-byte _supply_projectile_id s)
     ;; uint8 _supply_robot_id
       (write-byte _supply_robot_id s)
     ;; uint8 _supply_projectile_step
       (write-byte _supply_projectile_step s)
     ;; uint8 _supply_projectile_num
       (write-byte _supply_projectile_num s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _supply_projectile_id
     (setq _supply_projectile_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _supply_robot_id
     (setq _supply_robot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _supply_projectile_step
     (setq _supply_projectile_step (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _supply_projectile_num
     (setq _supply_projectile_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::SupplyProjectileAction :md5sum-) "e26c5d955511e834893fa4c75036d963")
(setf (get rm_msgs::SupplyProjectileAction :datatype-) "rm_msgs/SupplyProjectileAction")
(setf (get rm_msgs::SupplyProjectileAction :definition-)
      "uint8 supply_projectile_id
uint8 supply_robot_id
uint8 supply_projectile_step
uint8 supply_projectile_num

time stamp

")



(provide :rm_msgs/SupplyProjectileAction "e26c5d955511e834893fa4c75036d963")



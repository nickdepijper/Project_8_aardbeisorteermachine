;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ShootCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ShootCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SHOOTCMD")
  (make-package "RM_MSGS::SHOOTCMD"))

(in-package "ROS")
;;//! \htmlinclude ShootCmd.msg.html


(intern "*STOP*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*STOP* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*STOP* 0)
(intern "*READY*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*READY* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*READY* 1)
(intern "*PUSH*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*PUSH* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*PUSH* 2)
(intern "*SPEED_ZERO_FOR_TEST*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*SPEED_ZERO_FOR_TEST* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*SPEED_ZERO_FOR_TEST* 0)
(intern "*SPEED_10M_PER_SECOND*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*SPEED_10M_PER_SECOND* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*SPEED_10M_PER_SECOND* 1)
(intern "*SPEED_15M_PER_SECOND*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*SPEED_15M_PER_SECOND* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*SPEED_15M_PER_SECOND* 2)
(intern "*SPEED_16M_PER_SECOND*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*SPEED_16M_PER_SECOND* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*SPEED_16M_PER_SECOND* 3)
(intern "*SPEED_18M_PER_SECOND*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*SPEED_18M_PER_SECOND* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*SPEED_18M_PER_SECOND* 4)
(intern "*SPEED_30M_PER_SECOND*" (find-package "RM_MSGS::SHOOTCMD"))
(shadow '*SPEED_30M_PER_SECOND* (find-package "RM_MSGS::SHOOTCMD"))
(defconstant rm_msgs::ShootCmd::*SPEED_30M_PER_SECOND* 5)
(defclass rm_msgs::ShootCmd
  :super ros::object
  :slots (_mode _speed _hz _stamp ))

(defmethod rm_msgs::ShootCmd
  (:init
   (&key
    ((:mode __mode) 0)
    ((:speed __speed) 0)
    ((:hz __hz) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _speed (round __speed))
   (setq _hz (float __hz))
   (setq _stamp __stamp)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:hz
   (&optional __hz)
   (if __hz (setq _hz __hz)) _hz)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _speed
    1
    ;; float64 _hz
    8
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _speed
       (write-byte _speed s)
     ;; float64 _hz
       (sys::poke _hz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speed
     (setq _speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _hz
     (setq _hz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ShootCmd :md5sum-) "b25a3c00a92bb8eead2eb72002d6d2f8")
(setf (get rm_msgs::ShootCmd :datatype-) "rm_msgs/ShootCmd")
(setf (get rm_msgs::ShootCmd :definition-)
      "uint8 STOP = 0
uint8 READY = 1
uint8 PUSH = 2

uint8 SPEED_ZERO_FOR_TEST = 0
uint8 SPEED_10M_PER_SECOND = 1
uint8 SPEED_15M_PER_SECOND = 2
uint8 SPEED_16M_PER_SECOND = 3
uint8 SPEED_18M_PER_SECOND = 4
uint8 SPEED_30M_PER_SECOND = 5

uint8 mode
uint8 speed
float64 hz
time stamp

")



(provide :rm_msgs/ShootCmd "b25a3c00a92bb8eead2eb72002d6d2f8")



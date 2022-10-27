
(cl:in-package :asdf)

(defsystem "rm_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CameraStatus" :depends-on ("_package_CameraStatus"))
    (:file "_package_CameraStatus" :depends-on ("_package"))
    (:file "ContinousDetectorSwitch" :depends-on ("_package_ContinousDetectorSwitch"))
    (:file "_package_ContinousDetectorSwitch" :depends-on ("_package"))
    (:file "EnableImuTrigger" :depends-on ("_package_EnableImuTrigger"))
    (:file "_package_EnableImuTrigger" :depends-on ("_package"))
    (:file "StatusChange" :depends-on ("_package_StatusChange"))
    (:file "_package_StatusChange" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "camera_calibration_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CalibrateBrightness" :depends-on ("_package_CalibrateBrightness"))
    (:file "_package_CalibrateBrightness" :depends-on ("_package"))
    (:file "CalibrateLens" :depends-on ("_package_CalibrateLens"))
    (:file "_package_CalibrateLens" :depends-on ("_package"))
  ))
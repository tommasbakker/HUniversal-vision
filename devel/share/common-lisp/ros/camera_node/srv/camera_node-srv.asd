
(cl:in-package :asdf)

(defsystem "camera_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :camera_node-msg
)
  :components ((:file "_package")
    (:file "CorrectionMatrices" :depends-on ("_package_CorrectionMatrices"))
    (:file "_package_CorrectionMatrices" :depends-on ("_package"))
    (:file "AutoWhiteBalance" :depends-on ("_package_AutoWhiteBalance"))
    (:file "_package_AutoWhiteBalance" :depends-on ("_package"))
    (:file "FishEyeCorrection" :depends-on ("_package_FishEyeCorrection"))
    (:file "_package_FishEyeCorrection" :depends-on ("_package"))
  ))
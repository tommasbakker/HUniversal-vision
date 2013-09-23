
(cl:in-package :asdf)

(defsystem "camera_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "matrix3x3" :depends-on ("_package_matrix3x3"))
    (:file "_package_matrix3x3" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "qr_code_reader_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "point64" :depends-on ("_package_point64"))
    (:file "_package_point64" :depends-on ("_package"))
    (:file "Collection" :depends-on ("_package_Collection"))
    (:file "_package_Collection" :depends-on ("_package"))
    (:file "qrCode" :depends-on ("_package_qrCode"))
    (:file "_package_qrCode" :depends-on ("_package"))
  ))
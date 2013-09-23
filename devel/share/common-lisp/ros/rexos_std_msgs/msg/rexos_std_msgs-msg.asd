
(cl:in-package :asdf)

(defsystem "rexos_std_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StdReturn" :depends-on ("_package_StdReturn"))
    (:file "_package_StdReturn" :depends-on ("_package"))
    (:file "KeyValuePair" :depends-on ("_package_KeyValuePair"))
    (:file "_package_KeyValuePair" :depends-on ("_package"))
    (:file "Map" :depends-on ("_package_Map"))
    (:file "_package_Map" :depends-on ("_package"))
  ))
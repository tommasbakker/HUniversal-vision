
(cl:in-package :asdf)

(defsystem "rexos_std_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Module" :depends-on ("_package_Module"))
    (:file "_package_Module" :depends-on ("_package"))
  ))
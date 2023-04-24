
(cl:in-package :asdf)

(defsystem "delivery_robot_serial_handler-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pos" :depends-on ("_package_Pos"))
    (:file "_package_Pos" :depends-on ("_package"))
    (:file "Vel" :depends-on ("_package_Vel"))
    (:file "_package_Vel" :depends-on ("_package"))
  ))
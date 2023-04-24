;; Auto-generated. Do not edit!


(when (boundp 'delivery_robot_serial_handler::Vel)
  (if (not (find-package "DELIVERY_ROBOT_SERIAL_HANDLER"))
    (make-package "DELIVERY_ROBOT_SERIAL_HANDLER"))
  (shadow 'Vel (find-package "DELIVERY_ROBOT_SERIAL_HANDLER")))
(unless (find-package "DELIVERY_ROBOT_SERIAL_HANDLER::VEL")
  (make-package "DELIVERY_ROBOT_SERIAL_HANDLER::VEL"))

(in-package "ROS")
;;//! \htmlinclude Vel.msg.html


(defclass delivery_robot_serial_handler::Vel
  :super ros::object
  :slots (_V1 _V2 ))

(defmethod delivery_robot_serial_handler::Vel
  (:init
   (&key
    ((:V1 __V1) 0)
    ((:V2 __V2) 0)
    )
   (send-super :init)
   (setq _V1 (round __V1))
   (setq _V2 (round __V2))
   self)
  (:V1
   (&optional __V1)
   (if __V1 (setq _V1 __V1)) _V1)
  (:V2
   (&optional __V2)
   (if __V2 (setq _V2 __V2)) _V2)
  (:serialization-length
   ()
   (+
    ;; int32 _V1
    4
    ;; int32 _V2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _V1
       (write-long _V1 s)
     ;; int32 _V2
       (write-long _V2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _V1
     (setq _V1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _V2
     (setq _V2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get delivery_robot_serial_handler::Vel :md5sum-) "dae73f832167df9adfb7b2bb4355fc17")
(setf (get delivery_robot_serial_handler::Vel :datatype-) "delivery_robot_serial_handler/Vel")
(setf (get delivery_robot_serial_handler::Vel :definition-)
      "int32 V1
int32 V2
")



(provide :delivery_robot_serial_handler/Vel "dae73f832167df9adfb7b2bb4355fc17")



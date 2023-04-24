;; Auto-generated. Do not edit!


(when (boundp 'delivery_robot_serial_handler::Pos)
  (if (not (find-package "DELIVERY_ROBOT_SERIAL_HANDLER"))
    (make-package "DELIVERY_ROBOT_SERIAL_HANDLER"))
  (shadow 'Pos (find-package "DELIVERY_ROBOT_SERIAL_HANDLER")))
(unless (find-package "DELIVERY_ROBOT_SERIAL_HANDLER::POS")
  (make-package "DELIVERY_ROBOT_SERIAL_HANDLER::POS"))

(in-package "ROS")
;;//! \htmlinclude Pos.msg.html


(defclass delivery_robot_serial_handler::Pos
  :super ros::object
  :slots (_P1 _P2 ))

(defmethod delivery_robot_serial_handler::Pos
  (:init
   (&key
    ((:P1 __P1) 0)
    ((:P2 __P2) 0)
    )
   (send-super :init)
   (setq _P1 (round __P1))
   (setq _P2 (round __P2))
   self)
  (:P1
   (&optional __P1)
   (if __P1 (setq _P1 __P1)) _P1)
  (:P2
   (&optional __P2)
   (if __P2 (setq _P2 __P2)) _P2)
  (:serialization-length
   ()
   (+
    ;; int32 _P1
    4
    ;; int32 _P2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _P1
       (write-long _P1 s)
     ;; int32 _P2
       (write-long _P2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _P1
     (setq _P1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _P2
     (setq _P2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get delivery_robot_serial_handler::Pos :md5sum-) "3362efe2d7e58f1252e89f624acd8c9f")
(setf (get delivery_robot_serial_handler::Pos :datatype-) "delivery_robot_serial_handler/Pos")
(setf (get delivery_robot_serial_handler::Pos :definition-)
      "int32 P1
int32 P2
")



(provide :delivery_robot_serial_handler/Pos "3362efe2d7e58f1252e89f624acd8c9f")



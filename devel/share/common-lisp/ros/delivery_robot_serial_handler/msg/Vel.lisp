; Auto-generated. Do not edit!


(cl:in-package delivery_robot_serial_handler-msg)


;//! \htmlinclude Vel.msg.html

(cl:defclass <Vel> (roslisp-msg-protocol:ros-message)
  ((V1
    :reader V1
    :initarg :V1
    :type cl:integer
    :initform 0)
   (V2
    :reader V2
    :initarg :V2
    :type cl:integer
    :initform 0))
)

(cl:defclass Vel (<Vel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name delivery_robot_serial_handler-msg:<Vel> is deprecated: use delivery_robot_serial_handler-msg:Vel instead.")))

(cl:ensure-generic-function 'V1-val :lambda-list '(m))
(cl:defmethod V1-val ((m <Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_robot_serial_handler-msg:V1-val is deprecated.  Use delivery_robot_serial_handler-msg:V1 instead.")
  (V1 m))

(cl:ensure-generic-function 'V2-val :lambda-list '(m))
(cl:defmethod V2-val ((m <Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_robot_serial_handler-msg:V2-val is deprecated.  Use delivery_robot_serial_handler-msg:V2 instead.")
  (V2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vel>) ostream)
  "Serializes a message object of type '<Vel>"
  (cl:let* ((signed (cl:slot-value msg 'V1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'V2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vel>) istream)
  "Deserializes a message object of type '<Vel>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'V1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'V2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vel>)))
  "Returns string type for a message object of type '<Vel>"
  "delivery_robot_serial_handler/Vel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vel)))
  "Returns string type for a message object of type 'Vel"
  "delivery_robot_serial_handler/Vel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vel>)))
  "Returns md5sum for a message object of type '<Vel>"
  "dae73f832167df9adfb7b2bb4355fc17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vel)))
  "Returns md5sum for a message object of type 'Vel"
  "dae73f832167df9adfb7b2bb4355fc17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vel>)))
  "Returns full string definition for message of type '<Vel>"
  (cl:format cl:nil "int32 V1~%int32 V2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vel)))
  "Returns full string definition for message of type 'Vel"
  (cl:format cl:nil "int32 V1~%int32 V2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vel>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vel>))
  "Converts a ROS message object to a list"
  (cl:list 'Vel
    (cl:cons ':V1 (V1 msg))
    (cl:cons ':V2 (V2 msg))
))

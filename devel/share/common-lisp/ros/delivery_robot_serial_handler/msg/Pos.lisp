; Auto-generated. Do not edit!


(cl:in-package delivery_robot_serial_handler-msg)


;//! \htmlinclude Pos.msg.html

(cl:defclass <Pos> (roslisp-msg-protocol:ros-message)
  ((P1
    :reader P1
    :initarg :P1
    :type cl:integer
    :initform 0)
   (P2
    :reader P2
    :initarg :P2
    :type cl:integer
    :initform 0))
)

(cl:defclass Pos (<Pos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name delivery_robot_serial_handler-msg:<Pos> is deprecated: use delivery_robot_serial_handler-msg:Pos instead.")))

(cl:ensure-generic-function 'P1-val :lambda-list '(m))
(cl:defmethod P1-val ((m <Pos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_robot_serial_handler-msg:P1-val is deprecated.  Use delivery_robot_serial_handler-msg:P1 instead.")
  (P1 m))

(cl:ensure-generic-function 'P2-val :lambda-list '(m))
(cl:defmethod P2-val ((m <Pos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_robot_serial_handler-msg:P2-val is deprecated.  Use delivery_robot_serial_handler-msg:P2 instead.")
  (P2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pos>) ostream)
  "Serializes a message object of type '<Pos>"
  (cl:let* ((signed (cl:slot-value msg 'P1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'P2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pos>) istream)
  "Deserializes a message object of type '<Pos>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'P1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'P2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pos>)))
  "Returns string type for a message object of type '<Pos>"
  "delivery_robot_serial_handler/Pos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pos)))
  "Returns string type for a message object of type 'Pos"
  "delivery_robot_serial_handler/Pos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pos>)))
  "Returns md5sum for a message object of type '<Pos>"
  "3362efe2d7e58f1252e89f624acd8c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pos)))
  "Returns md5sum for a message object of type 'Pos"
  "3362efe2d7e58f1252e89f624acd8c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pos>)))
  "Returns full string definition for message of type '<Pos>"
  (cl:format cl:nil "int32 P1~%int32 P2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pos)))
  "Returns full string definition for message of type 'Pos"
  (cl:format cl:nil "int32 P1~%int32 P2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pos>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pos>))
  "Converts a ROS message object to a list"
  (cl:list 'Pos
    (cl:cons ':P1 (P1 msg))
    (cl:cons ':P2 (P2 msg))
))

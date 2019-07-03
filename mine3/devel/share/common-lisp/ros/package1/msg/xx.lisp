; Auto-generated. Do not edit!


(cl:in-package package1-msg)


;//! \htmlinclude xx.msg.html

(cl:defclass <xx> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0))
)

(cl:defclass xx (<xx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package1-msg:<xx> is deprecated: use package1-msg:xx instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <xx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package1-msg:value-val is deprecated.  Use package1-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <xx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package1-msg:number-val is deprecated.  Use package1-msg:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xx>) ostream)
  "Serializes a message object of type '<xx>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xx>) istream)
  "Deserializes a message object of type '<xx>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xx>)))
  "Returns string type for a message object of type '<xx>"
  "package1/xx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xx)))
  "Returns string type for a message object of type 'xx"
  "package1/xx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xx>)))
  "Returns md5sum for a message object of type '<xx>"
  "ee77c94eccf43256662c380c97a6bc35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xx)))
  "Returns md5sum for a message object of type 'xx"
  "ee77c94eccf43256662c380c97a6bc35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xx>)))
  "Returns full string definition for message of type '<xx>"
  (cl:format cl:nil "int32 value~%int32 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xx)))
  "Returns full string definition for message of type 'xx"
  (cl:format cl:nil "int32 value~%int32 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xx>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xx>))
  "Converts a ROS message object to a list"
  (cl:list 'xx
    (cl:cons ':value (value msg))
    (cl:cons ':number (number msg))
))

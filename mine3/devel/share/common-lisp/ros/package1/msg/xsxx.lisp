; Auto-generated. Do not edit!


(cl:in-package package1-msg)


;//! \htmlinclude xsxx.msg.html

(cl:defclass <xsxx> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (sex
    :reader sex
    :initarg :sex
    :type cl:integer
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0))
)

(cl:defclass xsxx (<xsxx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xsxx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xsxx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package1-msg:<xsxx> is deprecated: use package1-msg:xsxx instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <xsxx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package1-msg:num-val is deprecated.  Use package1-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <xsxx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package1-msg:name-val is deprecated.  Use package1-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'sex-val :lambda-list '(m))
(cl:defmethod sex-val ((m <xsxx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package1-msg:sex-val is deprecated.  Use package1-msg:sex instead.")
  (sex m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <xsxx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package1-msg:age-val is deprecated.  Use package1-msg:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xsxx>) ostream)
  "Serializes a message object of type '<xsxx>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sex)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xsxx>) istream)
  "Deserializes a message object of type '<xsxx>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sex)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xsxx>)))
  "Returns string type for a message object of type '<xsxx>"
  "package1/xsxx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xsxx)))
  "Returns string type for a message object of type 'xsxx"
  "package1/xsxx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xsxx>)))
  "Returns md5sum for a message object of type '<xsxx>"
  "3498295c192fb06e0bc39c0f48535271")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xsxx)))
  "Returns md5sum for a message object of type 'xsxx"
  "3498295c192fb06e0bc39c0f48535271")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xsxx>)))
  "Returns full string definition for message of type '<xsxx>"
  (cl:format cl:nil "int32 num~%string name~%char sex~%int32 age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xsxx)))
  "Returns full string definition for message of type 'xsxx"
  (cl:format cl:nil "int32 num~%string name~%char sex~%int32 age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xsxx>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xsxx>))
  "Converts a ROS message object to a list"
  (cl:list 'xsxx
    (cl:cons ':num (num msg))
    (cl:cons ':name (name msg))
    (cl:cons ':sex (sex msg))
    (cl:cons ':age (age msg))
))

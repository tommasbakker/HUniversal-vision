; Auto-generated. Do not edit!


(cl:in-package rexos_std_msgs-msg)


;//! \htmlinclude KeyValuePair.msg.html

(cl:defclass <KeyValuePair> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass KeyValuePair (<KeyValuePair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyValuePair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyValuePair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rexos_std_msgs-msg:<KeyValuePair> is deprecated: use rexos_std_msgs-msg:KeyValuePair instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rexos_std_msgs-msg:key-val is deprecated.  Use rexos_std_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rexos_std_msgs-msg:value-val is deprecated.  Use rexos_std_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyValuePair>) ostream)
  "Serializes a message object of type '<KeyValuePair>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyValuePair>) istream)
  "Deserializes a message object of type '<KeyValuePair>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyValuePair>)))
  "Returns string type for a message object of type '<KeyValuePair>"
  "rexos_std_msgs/KeyValuePair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyValuePair)))
  "Returns string type for a message object of type 'KeyValuePair"
  "rexos_std_msgs/KeyValuePair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyValuePair>)))
  "Returns md5sum for a message object of type '<KeyValuePair>"
  "cf57fdc6617a881a88c16e768132149c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyValuePair)))
  "Returns md5sum for a message object of type 'KeyValuePair"
  "cf57fdc6617a881a88c16e768132149c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyValuePair>)))
  "Returns full string definition for message of type '<KeyValuePair>"
  (cl:format cl:nil "string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyValuePair)))
  "Returns full string definition for message of type 'KeyValuePair"
  (cl:format cl:nil "string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyValuePair>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyValuePair>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyValuePair
    (cl:cons ':key (key msg))
    (cl:cons ':value (value msg))
))

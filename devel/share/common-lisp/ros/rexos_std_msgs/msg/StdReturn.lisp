; Auto-generated. Do not edit!


(cl:in-package rexos_std_msgs-msg)


;//! \htmlinclude StdReturn.msg.html

(cl:defclass <StdReturn> (roslisp-msg-protocol:ros-message)
  ((succeeded
    :reader succeeded
    :initarg :succeeded
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StdReturn (<StdReturn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StdReturn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StdReturn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rexos_std_msgs-msg:<StdReturn> is deprecated: use rexos_std_msgs-msg:StdReturn instead.")))

(cl:ensure-generic-function 'succeeded-val :lambda-list '(m))
(cl:defmethod succeeded-val ((m <StdReturn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rexos_std_msgs-msg:succeeded-val is deprecated.  Use rexos_std_msgs-msg:succeeded instead.")
  (succeeded m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StdReturn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rexos_std_msgs-msg:message-val is deprecated.  Use rexos_std_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StdReturn>) ostream)
  "Serializes a message object of type '<StdReturn>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'succeeded) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StdReturn>) istream)
  "Deserializes a message object of type '<StdReturn>"
    (cl:setf (cl:slot-value msg 'succeeded) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StdReturn>)))
  "Returns string type for a message object of type '<StdReturn>"
  "rexos_std_msgs/StdReturn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StdReturn)))
  "Returns string type for a message object of type 'StdReturn"
  "rexos_std_msgs/StdReturn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StdReturn>)))
  "Returns md5sum for a message object of type '<StdReturn>"
  "92f07022ad10c1e4ff936618bca1e212")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StdReturn)))
  "Returns md5sum for a message object of type 'StdReturn"
  "92f07022ad10c1e4ff936618bca1e212")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StdReturn>)))
  "Returns full string definition for message of type '<StdReturn>"
  (cl:format cl:nil "bool succeeded~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StdReturn)))
  "Returns full string definition for message of type 'StdReturn"
  (cl:format cl:nil "bool succeeded~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StdReturn>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StdReturn>))
  "Converts a ROS message object to a list"
  (cl:list 'StdReturn
    (cl:cons ':succeeded (succeeded msg))
    (cl:cons ':message (message msg))
))

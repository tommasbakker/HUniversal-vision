; Auto-generated. Do not edit!


(cl:in-package rexos_std_srvs-srv)


;//! \htmlinclude Module-request.msg.html

(cl:defclass <Module-request> (roslisp-msg-protocol:ros-message)
  ((json
    :reader json
    :initarg :json
    :type cl:string
    :initform ""))
)

(cl:defclass Module-request (<Module-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Module-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Module-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rexos_std_srvs-srv:<Module-request> is deprecated: use rexos_std_srvs-srv:Module-request instead.")))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <Module-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rexos_std_srvs-srv:json-val is deprecated.  Use rexos_std_srvs-srv:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Module-request>) ostream)
  "Serializes a message object of type '<Module-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Module-request>) istream)
  "Deserializes a message object of type '<Module-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Module-request>)))
  "Returns string type for a service object of type '<Module-request>"
  "rexos_std_srvs/ModuleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Module-request)))
  "Returns string type for a service object of type 'Module-request"
  "rexos_std_srvs/ModuleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Module-request>)))
  "Returns md5sum for a message object of type '<Module-request>"
  "32066a77720df5097fe95349590b6013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Module-request)))
  "Returns md5sum for a message object of type 'Module-request"
  "32066a77720df5097fe95349590b6013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Module-request>)))
  "Returns full string definition for message of type '<Module-request>"
  (cl:format cl:nil "string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Module-request)))
  "Returns full string definition for message of type 'Module-request"
  (cl:format cl:nil "string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Module-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Module-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Module-request
    (cl:cons ':json (json msg))
))
;//! \htmlinclude Module-response.msg.html

(cl:defclass <Module-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Module-response (<Module-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Module-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Module-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rexos_std_srvs-srv:<Module-response> is deprecated: use rexos_std_srvs-srv:Module-response instead.")))

(cl:ensure-generic-function 'succeeded-val :lambda-list '(m))
(cl:defmethod succeeded-val ((m <Module-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rexos_std_srvs-srv:succeeded-val is deprecated.  Use rexos_std_srvs-srv:succeeded instead.")
  (succeeded m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Module-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rexos_std_srvs-srv:message-val is deprecated.  Use rexos_std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Module-response>) ostream)
  "Serializes a message object of type '<Module-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'succeeded) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Module-response>) istream)
  "Deserializes a message object of type '<Module-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Module-response>)))
  "Returns string type for a service object of type '<Module-response>"
  "rexos_std_srvs/ModuleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Module-response)))
  "Returns string type for a service object of type 'Module-response"
  "rexos_std_srvs/ModuleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Module-response>)))
  "Returns md5sum for a message object of type '<Module-response>"
  "32066a77720df5097fe95349590b6013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Module-response)))
  "Returns md5sum for a message object of type 'Module-response"
  "32066a77720df5097fe95349590b6013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Module-response>)))
  "Returns full string definition for message of type '<Module-response>"
  (cl:format cl:nil "bool succeeded~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Module-response)))
  "Returns full string definition for message of type 'Module-response"
  (cl:format cl:nil "bool succeeded~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Module-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Module-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Module-response
    (cl:cons ':succeeded (succeeded msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Module)))
  'Module-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Module)))
  'Module-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Module)))
  "Returns string type for a service object of type '<Module>"
  "rexos_std_srvs/Module")
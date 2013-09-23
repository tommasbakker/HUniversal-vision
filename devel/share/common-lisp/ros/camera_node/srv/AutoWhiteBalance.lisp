; Auto-generated. Do not edit!


(cl:in-package camera_node-srv)


;//! \htmlinclude AutoWhiteBalance-request.msg.html

(cl:defclass <AutoWhiteBalance-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AutoWhiteBalance-request (<AutoWhiteBalance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoWhiteBalance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoWhiteBalance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_node-srv:<AutoWhiteBalance-request> is deprecated: use camera_node-srv:AutoWhiteBalance-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <AutoWhiteBalance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_node-srv:enable-val is deprecated.  Use camera_node-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoWhiteBalance-request>) ostream)
  "Serializes a message object of type '<AutoWhiteBalance-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoWhiteBalance-request>) istream)
  "Deserializes a message object of type '<AutoWhiteBalance-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoWhiteBalance-request>)))
  "Returns string type for a service object of type '<AutoWhiteBalance-request>"
  "camera_node/AutoWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoWhiteBalance-request)))
  "Returns string type for a service object of type 'AutoWhiteBalance-request"
  "camera_node/AutoWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoWhiteBalance-request>)))
  "Returns md5sum for a message object of type '<AutoWhiteBalance-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoWhiteBalance-request)))
  "Returns md5sum for a message object of type 'AutoWhiteBalance-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoWhiteBalance-request>)))
  "Returns full string definition for message of type '<AutoWhiteBalance-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoWhiteBalance-request)))
  "Returns full string definition for message of type 'AutoWhiteBalance-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoWhiteBalance-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoWhiteBalance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoWhiteBalance-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude AutoWhiteBalance-response.msg.html

(cl:defclass <AutoWhiteBalance-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AutoWhiteBalance-response (<AutoWhiteBalance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoWhiteBalance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoWhiteBalance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_node-srv:<AutoWhiteBalance-response> is deprecated: use camera_node-srv:AutoWhiteBalance-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoWhiteBalance-response>) ostream)
  "Serializes a message object of type '<AutoWhiteBalance-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoWhiteBalance-response>) istream)
  "Deserializes a message object of type '<AutoWhiteBalance-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoWhiteBalance-response>)))
  "Returns string type for a service object of type '<AutoWhiteBalance-response>"
  "camera_node/AutoWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoWhiteBalance-response)))
  "Returns string type for a service object of type 'AutoWhiteBalance-response"
  "camera_node/AutoWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoWhiteBalance-response>)))
  "Returns md5sum for a message object of type '<AutoWhiteBalance-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoWhiteBalance-response)))
  "Returns md5sum for a message object of type 'AutoWhiteBalance-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoWhiteBalance-response>)))
  "Returns full string definition for message of type '<AutoWhiteBalance-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoWhiteBalance-response)))
  "Returns full string definition for message of type 'AutoWhiteBalance-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoWhiteBalance-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoWhiteBalance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoWhiteBalance-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutoWhiteBalance)))
  'AutoWhiteBalance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutoWhiteBalance)))
  'AutoWhiteBalance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoWhiteBalance)))
  "Returns string type for a service object of type '<AutoWhiteBalance>"
  "camera_node/AutoWhiteBalance")
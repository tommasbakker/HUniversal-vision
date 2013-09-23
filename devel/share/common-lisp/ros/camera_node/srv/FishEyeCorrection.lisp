; Auto-generated. Do not edit!


(cl:in-package camera_node-srv)


;//! \htmlinclude FishEyeCorrection-request.msg.html

(cl:defclass <FishEyeCorrection-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FishEyeCorrection-request (<FishEyeCorrection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FishEyeCorrection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FishEyeCorrection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_node-srv:<FishEyeCorrection-request> is deprecated: use camera_node-srv:FishEyeCorrection-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <FishEyeCorrection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_node-srv:enable-val is deprecated.  Use camera_node-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FishEyeCorrection-request>) ostream)
  "Serializes a message object of type '<FishEyeCorrection-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FishEyeCorrection-request>) istream)
  "Deserializes a message object of type '<FishEyeCorrection-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FishEyeCorrection-request>)))
  "Returns string type for a service object of type '<FishEyeCorrection-request>"
  "camera_node/FishEyeCorrectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FishEyeCorrection-request)))
  "Returns string type for a service object of type 'FishEyeCorrection-request"
  "camera_node/FishEyeCorrectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FishEyeCorrection-request>)))
  "Returns md5sum for a message object of type '<FishEyeCorrection-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FishEyeCorrection-request)))
  "Returns md5sum for a message object of type 'FishEyeCorrection-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FishEyeCorrection-request>)))
  "Returns full string definition for message of type '<FishEyeCorrection-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FishEyeCorrection-request)))
  "Returns full string definition for message of type 'FishEyeCorrection-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FishEyeCorrection-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FishEyeCorrection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FishEyeCorrection-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude FishEyeCorrection-response.msg.html

(cl:defclass <FishEyeCorrection-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FishEyeCorrection-response (<FishEyeCorrection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FishEyeCorrection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FishEyeCorrection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_node-srv:<FishEyeCorrection-response> is deprecated: use camera_node-srv:FishEyeCorrection-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FishEyeCorrection-response>) ostream)
  "Serializes a message object of type '<FishEyeCorrection-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FishEyeCorrection-response>) istream)
  "Deserializes a message object of type '<FishEyeCorrection-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FishEyeCorrection-response>)))
  "Returns string type for a service object of type '<FishEyeCorrection-response>"
  "camera_node/FishEyeCorrectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FishEyeCorrection-response)))
  "Returns string type for a service object of type 'FishEyeCorrection-response"
  "camera_node/FishEyeCorrectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FishEyeCorrection-response>)))
  "Returns md5sum for a message object of type '<FishEyeCorrection-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FishEyeCorrection-response)))
  "Returns md5sum for a message object of type 'FishEyeCorrection-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FishEyeCorrection-response>)))
  "Returns full string definition for message of type '<FishEyeCorrection-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FishEyeCorrection-response)))
  "Returns full string definition for message of type 'FishEyeCorrection-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FishEyeCorrection-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FishEyeCorrection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FishEyeCorrection-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FishEyeCorrection)))
  'FishEyeCorrection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FishEyeCorrection)))
  'FishEyeCorrection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FishEyeCorrection)))
  "Returns string type for a service object of type '<FishEyeCorrection>"
  "camera_node/FishEyeCorrection")
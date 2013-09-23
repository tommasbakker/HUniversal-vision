; Auto-generated. Do not edit!


(cl:in-package camera_calibration_node-srv)


;//! \htmlinclude CalibrateBrightness-request.msg.html

(cl:defclass <CalibrateBrightness-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CalibrateBrightness-request (<CalibrateBrightness-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateBrightness-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateBrightness-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_calibration_node-srv:<CalibrateBrightness-request> is deprecated: use camera_calibration_node-srv:CalibrateBrightness-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateBrightness-request>) ostream)
  "Serializes a message object of type '<CalibrateBrightness-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateBrightness-request>) istream)
  "Deserializes a message object of type '<CalibrateBrightness-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateBrightness-request>)))
  "Returns string type for a service object of type '<CalibrateBrightness-request>"
  "camera_calibration_node/CalibrateBrightnessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateBrightness-request)))
  "Returns string type for a service object of type 'CalibrateBrightness-request"
  "camera_calibration_node/CalibrateBrightnessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateBrightness-request>)))
  "Returns md5sum for a message object of type '<CalibrateBrightness-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateBrightness-request)))
  "Returns md5sum for a message object of type 'CalibrateBrightness-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateBrightness-request>)))
  "Returns full string definition for message of type '<CalibrateBrightness-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateBrightness-request)))
  "Returns full string definition for message of type 'CalibrateBrightness-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateBrightness-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateBrightness-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateBrightness-request
))
;//! \htmlinclude CalibrateBrightness-response.msg.html

(cl:defclass <CalibrateBrightness-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CalibrateBrightness-response (<CalibrateBrightness-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateBrightness-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateBrightness-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_calibration_node-srv:<CalibrateBrightness-response> is deprecated: use camera_calibration_node-srv:CalibrateBrightness-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateBrightness-response>) ostream)
  "Serializes a message object of type '<CalibrateBrightness-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateBrightness-response>) istream)
  "Deserializes a message object of type '<CalibrateBrightness-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateBrightness-response>)))
  "Returns string type for a service object of type '<CalibrateBrightness-response>"
  "camera_calibration_node/CalibrateBrightnessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateBrightness-response)))
  "Returns string type for a service object of type 'CalibrateBrightness-response"
  "camera_calibration_node/CalibrateBrightnessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateBrightness-response>)))
  "Returns md5sum for a message object of type '<CalibrateBrightness-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateBrightness-response)))
  "Returns md5sum for a message object of type 'CalibrateBrightness-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateBrightness-response>)))
  "Returns full string definition for message of type '<CalibrateBrightness-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateBrightness-response)))
  "Returns full string definition for message of type 'CalibrateBrightness-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateBrightness-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateBrightness-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateBrightness-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalibrateBrightness)))
  'CalibrateBrightness-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalibrateBrightness)))
  'CalibrateBrightness-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateBrightness)))
  "Returns string type for a service object of type '<CalibrateBrightness>"
  "camera_calibration_node/CalibrateBrightness")
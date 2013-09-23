; Auto-generated. Do not edit!


(cl:in-package camera_calibration_node-srv)


;//! \htmlinclude CalibrateLens-request.msg.html

(cl:defclass <CalibrateLens-request> (roslisp-msg-protocol:ros-message)
  ((frameCount
    :reader frameCount
    :initarg :frameCount
    :type cl:integer
    :initform 0)
   (boardWidth
    :reader boardWidth
    :initarg :boardWidth
    :type cl:integer
    :initform 0)
   (boardHeight
    :reader boardHeight
    :initarg :boardHeight
    :type cl:integer
    :initform 0))
)

(cl:defclass CalibrateLens-request (<CalibrateLens-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateLens-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateLens-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_calibration_node-srv:<CalibrateLens-request> is deprecated: use camera_calibration_node-srv:CalibrateLens-request instead.")))

(cl:ensure-generic-function 'frameCount-val :lambda-list '(m))
(cl:defmethod frameCount-val ((m <CalibrateLens-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_calibration_node-srv:frameCount-val is deprecated.  Use camera_calibration_node-srv:frameCount instead.")
  (frameCount m))

(cl:ensure-generic-function 'boardWidth-val :lambda-list '(m))
(cl:defmethod boardWidth-val ((m <CalibrateLens-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_calibration_node-srv:boardWidth-val is deprecated.  Use camera_calibration_node-srv:boardWidth instead.")
  (boardWidth m))

(cl:ensure-generic-function 'boardHeight-val :lambda-list '(m))
(cl:defmethod boardHeight-val ((m <CalibrateLens-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_calibration_node-srv:boardHeight-val is deprecated.  Use camera_calibration_node-srv:boardHeight instead.")
  (boardHeight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateLens-request>) ostream)
  "Serializes a message object of type '<CalibrateLens-request>"
  (cl:let* ((signed (cl:slot-value msg 'frameCount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'boardWidth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'boardHeight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateLens-request>) istream)
  "Deserializes a message object of type '<CalibrateLens-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frameCount) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'boardWidth) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'boardHeight) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateLens-request>)))
  "Returns string type for a service object of type '<CalibrateLens-request>"
  "camera_calibration_node/CalibrateLensRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateLens-request)))
  "Returns string type for a service object of type 'CalibrateLens-request"
  "camera_calibration_node/CalibrateLensRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateLens-request>)))
  "Returns md5sum for a message object of type '<CalibrateLens-request>"
  "7481f744191744cfb8dcacc5947a34c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateLens-request)))
  "Returns md5sum for a message object of type 'CalibrateLens-request"
  "7481f744191744cfb8dcacc5947a34c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateLens-request>)))
  "Returns full string definition for message of type '<CalibrateLens-request>"
  (cl:format cl:nil "int32 frameCount~%int32 boardWidth~%int32 boardHeight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateLens-request)))
  "Returns full string definition for message of type 'CalibrateLens-request"
  (cl:format cl:nil "int32 frameCount~%int32 boardWidth~%int32 boardHeight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateLens-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateLens-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateLens-request
    (cl:cons ':frameCount (frameCount msg))
    (cl:cons ':boardWidth (boardWidth msg))
    (cl:cons ':boardHeight (boardHeight msg))
))
;//! \htmlinclude CalibrateLens-response.msg.html

(cl:defclass <CalibrateLens-response> (roslisp-msg-protocol:ros-message)
  ((processedFrames
    :reader processedFrames
    :initarg :processedFrames
    :type cl:integer
    :initform 0))
)

(cl:defclass CalibrateLens-response (<CalibrateLens-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateLens-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateLens-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_calibration_node-srv:<CalibrateLens-response> is deprecated: use camera_calibration_node-srv:CalibrateLens-response instead.")))

(cl:ensure-generic-function 'processedFrames-val :lambda-list '(m))
(cl:defmethod processedFrames-val ((m <CalibrateLens-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_calibration_node-srv:processedFrames-val is deprecated.  Use camera_calibration_node-srv:processedFrames instead.")
  (processedFrames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateLens-response>) ostream)
  "Serializes a message object of type '<CalibrateLens-response>"
  (cl:let* ((signed (cl:slot-value msg 'processedFrames)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateLens-response>) istream)
  "Deserializes a message object of type '<CalibrateLens-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'processedFrames) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateLens-response>)))
  "Returns string type for a service object of type '<CalibrateLens-response>"
  "camera_calibration_node/CalibrateLensResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateLens-response)))
  "Returns string type for a service object of type 'CalibrateLens-response"
  "camera_calibration_node/CalibrateLensResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateLens-response>)))
  "Returns md5sum for a message object of type '<CalibrateLens-response>"
  "7481f744191744cfb8dcacc5947a34c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateLens-response)))
  "Returns md5sum for a message object of type 'CalibrateLens-response"
  "7481f744191744cfb8dcacc5947a34c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateLens-response>)))
  "Returns full string definition for message of type '<CalibrateLens-response>"
  (cl:format cl:nil "int32 processedFrames~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateLens-response)))
  "Returns full string definition for message of type 'CalibrateLens-response"
  (cl:format cl:nil "int32 processedFrames~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateLens-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateLens-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateLens-response
    (cl:cons ':processedFrames (processedFrames msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalibrateLens)))
  'CalibrateLens-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalibrateLens)))
  'CalibrateLens-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateLens)))
  "Returns string type for a service object of type '<CalibrateLens>"
  "camera_calibration_node/CalibrateLens")
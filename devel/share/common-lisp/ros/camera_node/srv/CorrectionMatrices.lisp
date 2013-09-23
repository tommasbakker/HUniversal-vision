; Auto-generated. Do not edit!


(cl:in-package camera_node-srv)


;//! \htmlinclude CorrectionMatrices-request.msg.html

(cl:defclass <CorrectionMatrices-request> (roslisp-msg-protocol:ros-message)
  ((cameraMatrix
    :reader cameraMatrix
    :initarg :cameraMatrix
    :type camera_node-msg:matrix3x3
    :initform (cl:make-instance 'camera_node-msg:matrix3x3))
   (distCoeffs
    :reader distCoeffs
    :initarg :distCoeffs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CorrectionMatrices-request (<CorrectionMatrices-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectionMatrices-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectionMatrices-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_node-srv:<CorrectionMatrices-request> is deprecated: use camera_node-srv:CorrectionMatrices-request instead.")))

(cl:ensure-generic-function 'cameraMatrix-val :lambda-list '(m))
(cl:defmethod cameraMatrix-val ((m <CorrectionMatrices-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_node-srv:cameraMatrix-val is deprecated.  Use camera_node-srv:cameraMatrix instead.")
  (cameraMatrix m))

(cl:ensure-generic-function 'distCoeffs-val :lambda-list '(m))
(cl:defmethod distCoeffs-val ((m <CorrectionMatrices-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_node-srv:distCoeffs-val is deprecated.  Use camera_node-srv:distCoeffs instead.")
  (distCoeffs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectionMatrices-request>) ostream)
  "Serializes a message object of type '<CorrectionMatrices-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cameraMatrix) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'distCoeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'distCoeffs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectionMatrices-request>) istream)
  "Deserializes a message object of type '<CorrectionMatrices-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cameraMatrix) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'distCoeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'distCoeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectionMatrices-request>)))
  "Returns string type for a service object of type '<CorrectionMatrices-request>"
  "camera_node/CorrectionMatricesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectionMatrices-request)))
  "Returns string type for a service object of type 'CorrectionMatrices-request"
  "camera_node/CorrectionMatricesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectionMatrices-request>)))
  "Returns md5sum for a message object of type '<CorrectionMatrices-request>"
  "0b2fa27950e3064d7ae379fa5e6689eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectionMatrices-request)))
  "Returns md5sum for a message object of type 'CorrectionMatrices-request"
  "0b2fa27950e3064d7ae379fa5e6689eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectionMatrices-request>)))
  "Returns full string definition for message of type '<CorrectionMatrices-request>"
  (cl:format cl:nil "matrix3x3 cameraMatrix~%float64[] distCoeffs~%~%================================================================================~%MSG: camera_node/matrix3x3~%float64[9] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectionMatrices-request)))
  "Returns full string definition for message of type 'CorrectionMatrices-request"
  (cl:format cl:nil "matrix3x3 cameraMatrix~%float64[] distCoeffs~%~%================================================================================~%MSG: camera_node/matrix3x3~%float64[9] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectionMatrices-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cameraMatrix))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'distCoeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectionMatrices-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectionMatrices-request
    (cl:cons ':cameraMatrix (cameraMatrix msg))
    (cl:cons ':distCoeffs (distCoeffs msg))
))
;//! \htmlinclude CorrectionMatrices-response.msg.html

(cl:defclass <CorrectionMatrices-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CorrectionMatrices-response (<CorrectionMatrices-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectionMatrices-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectionMatrices-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_node-srv:<CorrectionMatrices-response> is deprecated: use camera_node-srv:CorrectionMatrices-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectionMatrices-response>) ostream)
  "Serializes a message object of type '<CorrectionMatrices-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectionMatrices-response>) istream)
  "Deserializes a message object of type '<CorrectionMatrices-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectionMatrices-response>)))
  "Returns string type for a service object of type '<CorrectionMatrices-response>"
  "camera_node/CorrectionMatricesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectionMatrices-response)))
  "Returns string type for a service object of type 'CorrectionMatrices-response"
  "camera_node/CorrectionMatricesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectionMatrices-response>)))
  "Returns md5sum for a message object of type '<CorrectionMatrices-response>"
  "0b2fa27950e3064d7ae379fa5e6689eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectionMatrices-response)))
  "Returns md5sum for a message object of type 'CorrectionMatrices-response"
  "0b2fa27950e3064d7ae379fa5e6689eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectionMatrices-response>)))
  "Returns full string definition for message of type '<CorrectionMatrices-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectionMatrices-response)))
  "Returns full string definition for message of type 'CorrectionMatrices-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectionMatrices-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectionMatrices-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectionMatrices-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CorrectionMatrices)))
  'CorrectionMatrices-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CorrectionMatrices)))
  'CorrectionMatrices-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectionMatrices)))
  "Returns string type for a service object of type '<CorrectionMatrices>"
  "camera_node/CorrectionMatrices")
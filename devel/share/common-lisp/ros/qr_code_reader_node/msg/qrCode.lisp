; Auto-generated. Do not edit!


(cl:in-package qr_code_reader_node-msg)


;//! \htmlinclude qrCode.msg.html

(cl:defclass <qrCode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:string
    :initform "")
   (corners
    :reader corners
    :initarg :corners
    :type (cl:vector qr_code_reader_node-msg:point64)
   :initform (cl:make-array 3 :element-type 'qr_code_reader_node-msg:point64 :initial-element (cl:make-instance 'qr_code_reader_node-msg:point64))))
)

(cl:defclass qrCode (<qrCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <qrCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'qrCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qr_code_reader_node-msg:<qrCode> is deprecated: use qr_code_reader_node-msg:qrCode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <qrCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qr_code_reader_node-msg:value-val is deprecated.  Use qr_code_reader_node-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <qrCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qr_code_reader_node-msg:corners-val is deprecated.  Use qr_code_reader_node-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <qrCode>) ostream)
  "Serializes a message object of type '<qrCode>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <qrCode>) istream)
  "Deserializes a message object of type '<qrCode>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'qr_code_reader_node-msg:point64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<qrCode>)))
  "Returns string type for a message object of type '<qrCode>"
  "qr_code_reader_node/qrCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'qrCode)))
  "Returns string type for a message object of type 'qrCode"
  "qr_code_reader_node/qrCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<qrCode>)))
  "Returns md5sum for a message object of type '<qrCode>"
  "2d00db900ac1def7162fffa086aace94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'qrCode)))
  "Returns md5sum for a message object of type 'qrCode"
  "2d00db900ac1def7162fffa086aace94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<qrCode>)))
  "Returns full string definition for message of type '<qrCode>"
  (cl:format cl:nil "string value~%point64[3] corners~%~%================================================================================~%MSG: qr_code_reader_node/point64~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'qrCode)))
  "Returns full string definition for message of type 'qrCode"
  (cl:format cl:nil "string value~%point64[3] corners~%~%================================================================================~%MSG: qr_code_reader_node/point64~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <qrCode>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'value))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <qrCode>))
  "Converts a ROS message object to a list"
  (cl:list 'qrCode
    (cl:cons ':value (value msg))
    (cl:cons ':corners (corners msg))
))

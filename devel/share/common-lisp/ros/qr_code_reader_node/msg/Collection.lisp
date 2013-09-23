; Auto-generated. Do not edit!


(cl:in-package qr_code_reader_node-msg)


;//! \htmlinclude Collection.msg.html

(cl:defclass <Collection> (roslisp-msg-protocol:ros-message)
  ((collection
    :reader collection
    :initarg :collection
    :type (cl:vector qr_code_reader_node-msg:qrCode)
   :initform (cl:make-array 0 :element-type 'qr_code_reader_node-msg:qrCode :initial-element (cl:make-instance 'qr_code_reader_node-msg:qrCode))))
)

(cl:defclass Collection (<Collection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Collection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Collection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qr_code_reader_node-msg:<Collection> is deprecated: use qr_code_reader_node-msg:Collection instead.")))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <Collection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qr_code_reader_node-msg:collection-val is deprecated.  Use qr_code_reader_node-msg:collection instead.")
  (collection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Collection>) ostream)
  "Serializes a message object of type '<Collection>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'collection))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Collection>) istream)
  "Deserializes a message object of type '<Collection>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collection) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collection)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'qr_code_reader_node-msg:qrCode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Collection>)))
  "Returns string type for a message object of type '<Collection>"
  "qr_code_reader_node/Collection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Collection)))
  "Returns string type for a message object of type 'Collection"
  "qr_code_reader_node/Collection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Collection>)))
  "Returns md5sum for a message object of type '<Collection>"
  "ed88e26dc0877b4b4774687d132d3b67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Collection)))
  "Returns md5sum for a message object of type 'Collection"
  "ed88e26dc0877b4b4774687d132d3b67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Collection>)))
  "Returns full string definition for message of type '<Collection>"
  (cl:format cl:nil "qrCode[] collection~%~%================================================================================~%MSG: qr_code_reader_node/qrCode~%string value~%point64[3] corners~%~%================================================================================~%MSG: qr_code_reader_node/point64~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Collection)))
  "Returns full string definition for message of type 'Collection"
  (cl:format cl:nil "qrCode[] collection~%~%================================================================================~%MSG: qr_code_reader_node/qrCode~%string value~%point64[3] corners~%~%================================================================================~%MSG: qr_code_reader_node/point64~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Collection>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Collection>))
  "Converts a ROS message object to a list"
  (cl:list 'Collection
    (cl:cons ':collection (collection msg))
))

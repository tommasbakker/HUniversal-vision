; Auto-generated. Do not edit!


(cl:in-package camera_node-msg)


;//! \htmlinclude matrix3x3.msg.html

(cl:defclass <matrix3x3> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass matrix3x3 (<matrix3x3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <matrix3x3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'matrix3x3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_node-msg:<matrix3x3> is deprecated: use camera_node-msg:matrix3x3 instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <matrix3x3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_node-msg:values-val is deprecated.  Use camera_node-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <matrix3x3>) ostream)
  "Serializes a message object of type '<matrix3x3>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <matrix3x3>) istream)
  "Deserializes a message object of type '<matrix3x3>"
  (cl:setf (cl:slot-value msg 'values) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<matrix3x3>)))
  "Returns string type for a message object of type '<matrix3x3>"
  "camera_node/matrix3x3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'matrix3x3)))
  "Returns string type for a message object of type 'matrix3x3"
  "camera_node/matrix3x3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<matrix3x3>)))
  "Returns md5sum for a message object of type '<matrix3x3>"
  "2c2377c56eaa1968dfc8719f26aebb7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'matrix3x3)))
  "Returns md5sum for a message object of type 'matrix3x3"
  "2c2377c56eaa1968dfc8719f26aebb7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<matrix3x3>)))
  "Returns full string definition for message of type '<matrix3x3>"
  (cl:format cl:nil "float64[9] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'matrix3x3)))
  "Returns full string definition for message of type 'matrix3x3"
  (cl:format cl:nil "float64[9] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <matrix3x3>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <matrix3x3>))
  "Converts a ROS message object to a list"
  (cl:list 'matrix3x3
    (cl:cons ':values (values msg))
))

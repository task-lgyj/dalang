; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Num.msg.html

(cl:defclass <Num> (roslisp-msg-protocol:ros-message)
  ((age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass Num (<Num>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Num>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Num)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Num> is deprecated: use beginner_tutorials-msg:Num instead.")))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:age-val is deprecated.  Use beginner_tutorials-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:content-val is deprecated.  Use beginner_tutorials-msg:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Num>) ostream)
  "Serializes a message object of type '<Num>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Num>) istream)
  "Deserializes a message object of type '<Num>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Num>)))
  "Returns string type for a message object of type '<Num>"
  "beginner_tutorials/Num")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Num)))
  "Returns string type for a message object of type 'Num"
  "beginner_tutorials/Num")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Num>)))
  "Returns md5sum for a message object of type '<Num>"
  "3b62634e09d2b0196e73d9028295f303")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Num)))
  "Returns md5sum for a message object of type 'Num"
  "3b62634e09d2b0196e73d9028295f303")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Num>)))
  "Returns full string definition for message of type '<Num>"
  (cl:format cl:nil "uint8 age~%string content~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Num)))
  "Returns full string definition for message of type 'Num"
  (cl:format cl:nil "uint8 age~%string content~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Num>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Num>))
  "Converts a ROS message object to a list"
  (cl:list 'Num
    (cl:cons ':age (age msg))
    (cl:cons ':content (content msg))
))

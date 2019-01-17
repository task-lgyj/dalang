;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Num)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Num (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::NUM")
  (make-package "BEGINNER_TUTORIALS::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass beginner_tutorials::Num
  :super ros::object
  :slots (_age _content ))

(defmethod beginner_tutorials::Num
  (:init
   (&key
    ((:age __age) 0)
    ((:content __content) "")
    )
   (send-super :init)
   (setq _age (round __age))
   (setq _content (string __content))
   self)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; uint8 _age
    1
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _age
       (write-byte _age s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::Num :md5sum-) "3b62634e09d2b0196e73d9028295f303")
(setf (get beginner_tutorials::Num :datatype-) "beginner_tutorials/Num")
(setf (get beginner_tutorials::Num :definition-)
      "uint8 age
string content

")



(provide :beginner_tutorials/Num "3b62634e09d2b0196e73d9028295f303")



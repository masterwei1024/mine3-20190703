;; Auto-generated. Do not edit!


(when (boundp 'package::xsxx)
  (if (not (find-package "PACKAGE"))
    (make-package "PACKAGE"))
  (shadow 'xsxx (find-package "PACKAGE")))
(unless (find-package "PACKAGE::XSXX")
  (make-package "PACKAGE::XSXX"))

(in-package "ROS")
;;//! \htmlinclude xsxx.msg.html


(defclass package::xsxx
  :super ros::object
  :slots (_num _name _sex _age ))

(defmethod package::xsxx
  (:init
   (&key
    ((:num __num) 0)
    ((:name __name) "")
    ((:sex __sex) 0)
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _name (string __name))
   (setq _sex (round __sex))
   (setq _age (round __age))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:sex
   (&optional __sex)
   (if __sex (setq _sex __sex)) _sex)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; int32 _num
    4
    ;; string _name
    4 (length _name)
    ;; char _sex
    1
    ;; int32 _age
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num
       (write-long _num s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; char _sex
       (write-byte _sex s)
     ;; int32 _age
       (write-long _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; char _sex
     (setq _sex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get package::xsxx :md5sum-) "3498295c192fb06e0bc39c0f48535271")
(setf (get package::xsxx :datatype-) "package/xsxx")
(setf (get package::xsxx :definition-)
      "int32 num
string name
char sex
int32 age

")



(provide :package/xsxx "3498295c192fb06e0bc39c0f48535271")



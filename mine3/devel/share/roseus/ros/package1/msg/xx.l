;; Auto-generated. Do not edit!


(when (boundp 'package1::xx)
  (if (not (find-package "PACKAGE1"))
    (make-package "PACKAGE1"))
  (shadow 'xx (find-package "PACKAGE1")))
(unless (find-package "PACKAGE1::XX")
  (make-package "PACKAGE1::XX"))

(in-package "ROS")
;;//! \htmlinclude xx.msg.html


(defclass package1::xx
  :super ros::object
  :slots (_value _number ))

(defmethod package1::xx
  (:init
   (&key
    ((:value __value) 0)
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _number (round __number))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ;; int32 _number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;; int32 _number
       (write-long _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get package1::xx :md5sum-) "ee77c94eccf43256662c380c97a6bc35")
(setf (get package1::xx :datatype-) "package1/xx")
(setf (get package1::xx :definition-)
      "int32 value
int32 number

")



(provide :package1/xx "ee77c94eccf43256662c380c97a6bc35")



;; Auto-generated. Do not edit!


(when (boundp 'package::xx)
  (if (not (find-package "PACKAGE"))
    (make-package "PACKAGE"))
  (shadow 'xx (find-package "PACKAGE")))
(unless (find-package "PACKAGE::XX")
  (make-package "PACKAGE::XX"))

(in-package "ROS")
;;//! \htmlinclude xx.msg.html


(defclass package::xx
  :super ros::object
  :slots (_value ))

(defmethod package::xx
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get package::xx :md5sum-) "b3087778e93fcd34cc8d65bc54e850d1")
(setf (get package::xx :datatype-) "package/xx")
(setf (get package::xx :definition-)
      "int32 value

")



(provide :package/xx "b3087778e93fcd34cc8d65bc54e850d1")



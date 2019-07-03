
(cl:in-package :asdf)

(defsystem "package1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "xh" :depends-on ("_package_xh"))
    (:file "_package_xh" :depends-on ("_package"))
    (:file "xsxx" :depends-on ("_package_xsxx"))
    (:file "_package_xsxx" :depends-on ("_package"))
    (:file "xx" :depends-on ("_package_xx"))
    (:file "_package_xx" :depends-on ("_package"))
  ))
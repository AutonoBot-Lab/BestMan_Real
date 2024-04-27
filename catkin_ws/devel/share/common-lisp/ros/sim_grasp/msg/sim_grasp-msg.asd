
(cl:in-package :asdf)

(defsystem "sim_grasp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sim_graspModel" :depends-on ("_package_sim_graspModel"))
    (:file "_package_sim_graspModel" :depends-on ("_package"))
  ))
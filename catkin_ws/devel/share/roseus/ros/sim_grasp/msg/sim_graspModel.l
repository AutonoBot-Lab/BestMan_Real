;; Auto-generated. Do not edit!


(when (boundp 'sim_grasp::sim_graspModel)
  (if (not (find-package "SIM_GRASP"))
    (make-package "SIM_GRASP"))
  (shadow 'sim_graspModel (find-package "SIM_GRASP")))
(unless (find-package "SIM_GRASP::SIM_GRASPMODEL")
  (make-package "SIM_GRASP::SIM_GRASPMODEL"))

(in-package "ROS")
;;//! \htmlinclude sim_graspModel.msg.html


(defclass sim_grasp::sim_graspModel
  :super ros::object
  :slots (_x _y _z _grasp_depth _angle _width ))

(defmethod sim_grasp::sim_graspModel
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0.0)
    ((:grasp_depth __grasp_depth) 0.0)
    ((:angle __angle) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (float __z))
   (setq _grasp_depth (float __grasp_depth))
   (setq _angle (float __angle))
   (setq _width (float __width))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:grasp_depth
   (&optional __grasp_depth)
   (if __grasp_depth (setq _grasp_depth __grasp_depth)) _grasp_depth)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; uint16 _x
    2
    ;; uint16 _y
    2
    ;; float64 _z
    8
    ;; float64 _grasp_depth
    8
    ;; float64 _angle
    8
    ;; float64 _width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _x
       (write-word _x s)
     ;; uint16 _y
       (write-word _y s)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _grasp_depth
       (sys::poke _grasp_depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _grasp_depth
     (setq _grasp_depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sim_grasp::sim_graspModel :md5sum-) "301be63e53b935edf2f7fc2376d5d03a")
(setf (get sim_grasp::sim_graspModel :datatype-) "sim_grasp/sim_graspModel")
(setf (get sim_grasp::sim_graspModel :definition-)
      "# x, y: 抓取点的像素坐标 (x, y)
# z: 抓取点的深度距离，单位 米
# grasp_depth: 抓取深度,实际抓取点距离物体表面的深度
# angle: 抓取弧度角 [0, 2π]
# width: 抓取宽度,单位米

uint16 x
uint16 y
float64 z
float64 grasp_depth
float64 angle
float64 width

")



(provide :sim_grasp/sim_graspModel "301be63e53b935edf2f7fc2376d5d03a")



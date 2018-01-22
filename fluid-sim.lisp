;;;; fluid-sim.lisp
;;
;;;; Copyright (c) 2018 Jeremiah LaRocco <jeremiah_larocco@fastmail.com>

(in-package #:fluid-sim)

(defclass fluid-simulation ()
  ((width :initarg :width :initform 1600 :type fixnum)
   (height :initarg :height :initform 1200 :type fixnum))
  (:documentation "Base class for fluid simulations."))

(defgeneric advance-simulation (sim dt)
  (:documentation "Advance the fluid simulation sim by dt seconds"))

(defmethod advance-simulation (sim dt)
  (declare (ignorable sim dt))
  sim)

(defgeneric to-png (sim file-name)
  (:documentation "Create a graphic view of the simulation in its current state."))

(defmethod to-png (sim file-name)
  (with-slots (width height) sim
    (let ((png (sp:create-png width height)))
      ;; Do something to generate an image of the fluid simulation in its current state."
      (sp:write-png png file-name))))


(defun run-simulation (output-directory duration &optional (fps 30))
  (let* ((real-dir-name (ju:fix-directory output-directory))
         (frame-count (* fps duration))
         (dt (/ 1.0 fps))
         (sim (make-instance 'fluid-simulation)))

    (dotimes (frame frame-count)
      (let ((output-file-name (format nil "~aframe~8,'0d.png" real-dir-name frame)))
        (advance-simulation sim dt)
        (to-png sim output-file-name)))))


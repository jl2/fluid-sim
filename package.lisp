;;;; package.lisp
;;
;;;; Copyright (c) 2018 Jeremiah LaRocco <jeremiah_larocco@fastmail.com>


(defpackage #:fluid-sim
  (:use #:cl #:alexandria #:3d-vectors  #:3d-matrices)
  (:export #:fluid-simulation
           #:run-simulation))

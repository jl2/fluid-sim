;;;; fluid-sim.asd
;;
;;;; Copyright (c) 2018 Jeremiah LaRocco <jeremiah_larocco@fastmail.com>


(asdf:defsystem #:fluid-sim
  :description "Implementation of several fluid simulation algorithms described in [Fluid Simulation for Computer Graphics](https://www.amazon.com/Fluid-Simulation-Computer-Graphics-Second-ebook/dp/B015PNELLA/ref=mt_kindle?_encoding=UTF8&me=)"
  :author "Jeremiah LaRocco <jeremiah_larocco@fastmail.com>"
  :license  "ISC (BSD-like)"
  :version "0.0.1"
  :serial t
  :depends-on (#:simple-png 
               #:j-utils
               #:alexandria
               #:3d-vectors
               #:3d-matrices)
  :components ((:file "package")
               (:file "fluid-sim")))

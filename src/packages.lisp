(in-package :cl-user)

(defpackage #:transducer
  (:use #:cl #:cl-user)
  (:export #:tmap
           #:tfilter
           #:flip
           #:combine))

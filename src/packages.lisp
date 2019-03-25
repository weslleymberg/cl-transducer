(in-package :cl-user)

(defpackage #:cl-transducer
  (:use #:cl #:cl-user)
  (:export #:tmap
           #:tfilter
           #:flip
           #:combine))

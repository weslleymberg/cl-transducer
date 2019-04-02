(defpackage #:cl-transducer-tests
  (:use #:5AM #:cl #:cl-transducer))

(in-package #:cl-transducer-tests)

(def-suite* transducer-suite :description "cl-transducer test suite.")

(test reduce-to-a-single-output ()
  (let ((input '(1 2 3 4))
        (reducer (combine #'+ (tmap 1+) (tfilter evenp))))
    (is (equal 8 (reduce reducer input :initial-value 0)))))

(test reduce-to-list ()
  (is (equal '(2 4) (reverse (reduce (combine (flip cons) 
                                              (tmap incf) 
                                              (tfilter oddp))
                                     '(1 2 3 4)
                                     :initial-value nil)))))

(test transducer-macro ()
  (let ((transd (transducer 0 #'+ (tmap 1+) (tfilter evenp)))) 
    (is (equal 8 (funcall transd '(1 2 3 4))))))

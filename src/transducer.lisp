(in-package :cl-transducer)

(defmacro flip (func)
  "Flips the input of a two parameter function"
  `(lambda (x y) (,func y x)))

(defmacro tmap (mapper)
  "Creates a mapping reducer"
  `(lambda (reducing-func)
    (lambda (acc x) (funcall reducing-func acc (,mapper x)))))

(defmacro tfilter (predicate)
  "Creates a filtering reducer"
  `(lambda (reducing-func)
    (lambda (acc x)
      (if (,predicate x)
          (funcall reducing-func acc x)
          acc))))

(defun combine (base &rest funcs)
  "Combines all reducers. Where base is a function that accepts 2
arguments and returns 1, like + or cons. Funcs will be applied
from last to fisrt.
"
  (reduce (lambda (acc x) (funcall x acc)) funcs
          :initial-value base))

#+nil
(let ((even (tfilter evenp))
      (plus-1 (tmap 1+)))
  (reverse (reduce (combine (flip cons) plus-1 even)
                   '(1 2 3 4 5)
                   :initial-value nil)))

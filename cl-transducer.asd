(asdf:defsystem #:cl-transducer
  :description "A library of useful functions/macros to create transducers"
  :author "Weslleymberg Lisboa <weslleym.lisboa@gmail.com>"
  :license "MIT"
  :version "0.1.0"
  :serial t
  :pathname "src"
  :components ((:file "packages")
               (:file "transducer"))
  :in-order-to ((test-op (test-op "cl-transducer/tests"))))

(asdf:defsystem #:cl-transducer/tests
  :description "Test suite for cl-transducer"
  :depends-on ("cl-transducer" "fiasco")
  :pathname "t"
  :components ((:file "test"))
  :perform (test-op (o c) (symbol-call :fiasco '#:run-tests :cl-transducer-test)))

(asdf:defsystem #:cl-transducer
  :description "A library of useful functions/macros to create transducers. (NOT MANTAINED: to a more complete transducer library see https://git.sr.ht/~fosskers/cl-transducers)"
  :author "Weslleymberg Lisboa <weslleym.lisboa@gmail.com>"
  :license "MIT"
  :version "0.1.0"
  :serial t
  :pathname "src"
  :components ((:file "packages")
               (:file "transducer")))

(asdf:defsystem #:cl-transducer/tests
  :description "Test suite for cl-transducer"
  :depends-on ("cl-transducer" "fiveam")
  :pathname "t"
  :components ((:file "test")))

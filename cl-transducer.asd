(asdf:defsystem #:cl-transducer
  :description "A library of useful functions/macros to create transducers"
  :author "Weslleymberg Lisboa <weslleym.lisboa@gmail.com>"
  :license "MIT"
  :version "0.1.0"
  :serial t
  :pathname "src"
  :components ((:file "packages")
               (:file "transducer")))

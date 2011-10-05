;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :util.match
  (:use)
  (:export :match
           :match-lambda
           :match-lambda*
           :match-let
           :match-let*
           :match-letrec
           :match-let1
           :match-define
           :match|:|$-ref
           :match|:|every
           :match|:|error))

(defpackage :util.match-internal
  (:use :util.match :cl :fiveam
        :srfi-2
        :rnrs)
  (:shadowing-import-from :rnrs-compat
                          :map
                          :make-string
                          :lambda)
  (:shadowing-import-from :srfi-23
                          :error)
  #|(:shadowing-import-from :srfi-1
                          :break
                          :tenth
                          :every
                          :last
                          :first
                          :find
                          :eighth
                          :sixth)|#)


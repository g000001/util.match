;;;; util.match.asd

(cl:in-package :asdf)

(defsystem :util.match
  :serial t
  :depends-on (:rnrs-compat :srfi-1 :srfi-2 :srfi-13 :fiveam)
  :components ((:file "package")
               (:file "util.match")))

(defmethod perform ((o test-op) (c (eql (find-system :util.match))))
  (load-system :util.match)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :util.match-internal :util.match))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))


(dolist (s '("cl-ppcre" "anaphora" "named-readtables" "parenscript"))
  (ql:quickload s))
(push (make-pathname
       :directory (append (pathname-directory *load-pathname*) '("Parenscript")))
      asdf:*central-registry*)
(asdf:load-system 'parenscript)
(defun ensure-list (l)
  "Tests whether L is a list of lists, and CONSes if it is not"
  (cond ((null l) nil)
        ((and (listp l) (listp (car l))) l)
        (t (list l))))
;; (defun ps-all (filename )
;;   (with-open-file (s filename :direction :input)
;;     (let ((*standard-input* s))
;;       (dolist (form (ensure-list (read )))
;;         (format t (parenscript:ps form))))))

(with-open-file (s "spv.js" :direction :output :if-exists :supersede)
  (let ((*parenscript-stream* s))       ;???
    (format s "~A" (parenscript:ps-compile-file "spv-js.lisp"))))

(load "spv-js.lisp")

(assert (= (qe2 7 2 13) 10))
(assert (= (qe2 7 3 13) 5))
(assert (= (qe2 7 4 13) 9))
(assert (= (qe2 7 5 13) 11))
(assert (= (qe2 7 6 13) 12))

(quit)


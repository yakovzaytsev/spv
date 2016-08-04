;;; TODO Montgomery's method
(defun qe2 (x n m)
  "(x^n) mod m using addition chain

x belongs to system in which an asociative multiplication,
with identity 1, has been defined"
  (loop with y = 1
        with z = x
        until (eql n 0)
        when (not (eql (mod n 2) 0))       ; odd
         do (setf y (mod (* y z) m))
        do (setf n (ash n (- 1)))
        do (setf z (mod (* z z) m))
        finally (return y)))





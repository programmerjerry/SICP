(defun improve (y x)
  (/
   (+ (/ x
         (* y
            y))
      (* 2 y))
   3))

(defun new-good-enough? (old-guess new-guess)
  (> 0.001
     (/ (abs (- new-guess old-guess))
        old-guess)))

(defun new-cube-root-iter (guess x)
  (if (new-good-enough? guess (improve guess x))
      (improve guess x)
    (new-cube-root-iter (improve guess x) x)))
(defun sqrt-iter (guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(defun good-enough? (guess x)
  (< (abs (- (square guess) x)) 0.001))

(defun improve (guess x)
  (average guess (/ x guess)))


(defun average (x y)
  (/ (+ x y) 2))

(defun square (x)
  (* x x))

(defun new-good-enough? (old-guess new-guess)
  (> 0.001
     (/ (abs (- new-guess old-guess))
        old-guess)))

(defun new-sqrt-iter (guess x)
  (if (new-good-enough? guess (improve guess x))
      (improve guess x)
    (new-sqrt-iter (improve guess x) x)))
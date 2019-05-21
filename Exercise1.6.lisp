(defun new-if (predicate the-clause else-clause)
  (cond (predicate the-clause)
        (else-clause)))

(defun sqrt-iter (guess x)
  (new-if (good-enough? guess x)
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

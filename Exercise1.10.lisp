(defun a (x y)
  (cond (( = y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (t (a (- x 1) (a x (- y 1))))))

(defun f (n)
  (a 0 n))

(defun g (n)
  (a 1 n))

(defun h (n)
  (a 2 n))

(defun k (n)
  (* 5 n n))

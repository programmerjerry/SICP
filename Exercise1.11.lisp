(defun fn-recursive (n)
  (cond ((< n 3) n)
        (t (+ (fn-recursive (- n 1))
              (* 2
                 (fn-recursive (- n 2)))
              (* 3
                 (fn-recursive (- n 3)))))))

(defun fn-iterative (a b c n)
  (if (= n 0)
      c
    (fn-iterative (+ a (* 2 b) (* 3 c))
                  a
                  b
                  (- n 1))))

(defun fn-iter (n)
  (fn-iterative 2 1 0 n))
(defun fib (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fib (- n 1))
              (fib (- n 2))))))

(defun fn (n)
  (let ((result1 1) (result2 1))
    (dotimes (i n)
      (progn
        (setf result1 (* result1
                         (/ (+ 1
                               (sqrt 5))
                            2)))
        (setf result2 (* result2
                         (/ (- 1
                               (sqrt 5))
                            2)))))
    (/ (- result1
          result2)
       (sqrt 5))))
      
    
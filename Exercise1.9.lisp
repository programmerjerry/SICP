(defun plus1 (a b)
  (if (= a 0)
      b
    (+ 1
       (plus1 (decf a)
                b))))

(defun plus2 (a b)
  (if (= a 0)
      b
    (plus2 (decf a)
       (incf b))))

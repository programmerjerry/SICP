(defun max-two-number-sum-of-square (a b c)
  (cond ((and (> a c) (> b c)) (+ (* a a) (* b b)))
        ((and (> a b) (> c b)) (+ (* a a) (* c c)))
        ((and (> b a) (> c a)) (+ (* b b) (* c c)))))

#|
CL-USER 17 > (max-two-number-sum-of-square 1 2 3)
13

CL-USER 18 > (max-two-number-sum-of-square 2 3 1)
13

CL-USER 19 > (max-two-number-sum-of-square 3 1 2)
13|#

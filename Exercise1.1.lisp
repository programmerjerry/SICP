CL-USER 1 > 10
10

CL-USER 2 > (+ 5 3 4)
12

CL-USER 3 > (- 9 1)
8

CL-USER 4 > (/ 6 2)
3

CL-USER 5 > (+ (* 2 4) (- 4 6))
6

CL-USER 6 > (defparameter a 3)
A

CL-USER 7 > (defparameter b (+ a 1))
B

CL-USER 8 > (+ a b (* a b))
19

CL-USER 9 > (= a b)
NIL
CL-USER 11 > (if (and (> b a) (< b (* a b)))
                 b
               a)
4
CL-USER 12 > (cond ((= a 4) 6)
                   ((= b 4) (+ 6 7 a))
                   (t 25))
16

CL-USER 13 > a
3

CL-USER 14 > b
4

CL-USER 15 > (+ 2 (if (> b a) b a))
6

CL-USER 16 > (* (cond ((> a b) a)
                      ((< a b) b)
                      (t -1))
                (+ a 1))
16

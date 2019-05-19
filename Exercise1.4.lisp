#|CL-USER 28 > (defun a-plus-abs-b (a b)
  ((if (> b 0)
       +
     -)
   a
   b))
A-PLUS-ABS-B

CL-USER 29 > (a-plus-abs-b 1 -2)

Error: Illegal car (IF (> B 0) + -) in compound form ((IF (> B 0) + -) A B).
  1 (continue) Evaluate (IF (> B 0) + -) and ignore the rest.
  2 (abort) Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 30 : 1 > (a-plus-abs-b 1 2)

Error: Illegal car (IF (> B 0) + -) in compound form ((IF (> B 0) + -) A B).
  1 (continue) Evaluate (IF (> B 0) + -) and ignore the rest.
  2 (abort) return to debug level 1.
  3 Evaluate (IF (> B 0) + -) and ignore the rest.
  4 Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 31 : 2 > |#

(defun a-plus-abs-b (a b)
  (funcall (if (> b 0)
               '+
             '-)
           a
           b))

#|
CL-USER 26 > (a-plus-abs-b 1 -2)
3
CL-USER 25 > (a-plus-abs-b 1 2)
3
|#

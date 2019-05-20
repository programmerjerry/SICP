(defun p ()
  (p))

;;;*** Warning in PP: An infinite loop
; PP

(defun test (x y)
  (if (= x 0)
      0
      y))

; CL-USER 6 > (test 0 (p))




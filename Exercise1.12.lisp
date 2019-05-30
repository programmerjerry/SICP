(defun pascal-triangle (row col)
  (cond ((and (= row 1) (= col 1)) 1) ; 第一行第一列是1
        ((or (= col 1) (= col row)) 1) ; 最左边和最右边都是1
        (t (+ (pascal-triangle (- row 1) (- col 1)) ; 当前位置的值是上面2个数的和
              (pascal-triangle (- row 1) col)))))

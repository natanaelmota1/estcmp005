(defun sequencia (a b)
    (let ((x (+ a b)))
    (let ((x (- x 1)))
    (loop for b from b to x
        do (format t "~d " b))))
        (write-line  "  "))

(sequencia 5 20)
(sequencia 9 10)
(sequencia 10 2)

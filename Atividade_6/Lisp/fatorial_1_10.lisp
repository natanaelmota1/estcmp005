(defun fatorial(n)
    (if (zerop n)
        1
    (* n (fatorial(1- n)))))

(defun tail_fatorial (number)
  (labels ((sequencia-aux (x acumulador)
             (if (zerop x)
                 acumulador
                 (sequencia-aux (- x 1) (* acumulador x)))))
    (sequencia-aux number 1)))

(write-line "Q1 - 1Fatorial Simples")
(time(print(fatorial 5)))
(time(print(fatorial 10)))
(time(print(fatorial 50)))
(write-line "------------------------------")
(write-line "

Q10 - Fatorial com recursão em cauda" )
(time(print(tail_fatorial 5)))
(time(print(tail_fatorial 10)))
(time(print(tail_fatorial 50)))

(write-line "
------------------------------------------------------------------------------------------------------------
A=(1 3 4 5 6 8 8), B=(2 4 5 6 8).
O union do lisp retorna os elementos que não se repetem na lista A e B, concatenados com a Lista B.")


(print(union '(1 3 4 5 6 8 8) '(2 4 5 6 8)))

(write-line "
------------------------------------------------------------------------------------------------------------
A=(2 4 5 6 8 8 9), B=(1 3 4 5 6 7 7).
De tal modo o union do lisp não trata duplicatas na lista B.")


(print(union '(2 4 5 6 8 8 9) '(1 3 4 5 6 7 7)))

(write-line "
------------------------------------------------------------------------------------------------------------            
A=(a b c c c c), B=(c d e e).
O intersection do lisp retorna CADA elemento da lista A caso ele repita em B.")


(print(intersection '(a b c c c c) '(c d e e)))

(write-line "
------------------------------------------------------------------------------------------------------------            
A=(a b c), B=(c c c c d e e).
...logo, o intersection do lisp também não imprimirá as repetições da lista B.")


(print(intersection '(a b c ) '(c c c c d e e)))

(write-line "
------------------------------------------------------------------------------------------------------------            
Uma form de lidar com as duplicatas é utilizando o remove-duplicates.
Lista (0 0 1 0 2 0 1 0 3) após remove-duplicates.")


(print(remove-duplicates '(0 0 1 0 2 0 1 0 3)))

(write-line "
------------------------------------------------------------------------------------------------------------            
Assim criamos novas funções para intersecção e união usando remove-duplicates.
            ")

(defun uniao(l1 l2)
    (print(union (remove-duplicates l1) (remove-duplicates l2)))
    )

(uniao '(2 4 5 6 8 8 9) '(1 3 4 5 6 7 7))

(defun interseccao(l1 l2)
    (print(intersection (remove-duplicates l1) (remove-duplicates l2)))
    )

(interseccao '(a b c c c c) '(a b c d e))

#lang racket
(display "Вариант 2\n")
(define (var2 lst)
  (if ( < 1 (length lst))
      (append (reverse lst) (var2 (cdr lst)))
      lst)
  
 )
(display "Список lst:(list 1 2 3 4 5 6)\n")
(display "Результат реверсирования хвоста lst:")
(var2 (list 1 2 3 4 5 6))

(display "Вариант 4\n")
(define (var4 lst)
  (if (list? lst)
      (if ( < 0 (length lst))
          (+ (var4 (car lst)) (var4 (cdr lst)))
          0
      )
      lst)
  
 )
(display "Cписок:(1((2 3) 4) 5 6)\n")
(display "Cумма всех числовых элементов списка с учетом наличия подсписков:")
(var4 '(1((2 3) 4) 5 6) )

(display "Вариант 8\n")
(define (var8 lst num)
  (if (= 0 num)
      (car (reverse lst))
      (var8 (reverse (cdr (reverse lst))) (- num 1 ))
      )
  
 )
(display "Список: (1 2 3 4 5 6 7 8 9 10) и позиция 0\n")
(display "Элемент списка по заданному номеру с конца:")
(var8 '(1 2 3 4 5 6 7 8 9 10) 0)
(display "Список: (1 2 3 4 5 6 7 8 9 10) и позиция 1\n")
(display "Элемент списка по заданному номеру с конца:")
(var8 '(1 2 3 4 5 6 7 8 9 10) 1)
(display "Список: (1 2 3 4 5 6 7 8 9 10) и позиция 4\n")
(display "Элемент списка по заданному номеру с конца:")
(var8 '(1 2 3 4 5 6 7 8 9 10) 4)
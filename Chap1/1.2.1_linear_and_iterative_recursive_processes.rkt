#lang racket


; factorial , proceso recursivo lineal, 

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

; proceso iterativo, esta es generada por un procedure de recursion de cola

(define (factorial2 n)
  (define (fact-iter product counter)
    (if (> counter n)
        product
        (fact-iter (* product counter) (+ counter 1))))
 (fact-iter 1 1))

(factorial 5)
(factorial2 5)


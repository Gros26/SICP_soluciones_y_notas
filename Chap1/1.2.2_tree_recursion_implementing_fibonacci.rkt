#lang racket


; Tree recursion, si vieramos la ilustracion de este procedimiento veremos que las ramas se dividen en dos cada nivel
; esto refleja que el procesdimiento se llama a si mismo dos veces cada vez. Es una implementacion que requiere
; mucha computacon redundante, ya que el trabajo se duplica.
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))


(fib 11)

; fib aplicado como un procedimiento recursivo pero que genera un proceso iterativo

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))


(define (fib2 n)
  (fib-iter 1 0 n))
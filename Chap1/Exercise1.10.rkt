#lang racket
; Exercise 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))


(A 1 10) ; 1024
(A 2 4) ; 65536
(A 3 3) ; 65536

; De una definicion matematica para lo que se calcula enlos siguientes procedures

(define (f n) (A 0 n))  ; Como x es cero, lo que voy a obtener es (* 2 n), obtendre el doble de n

(define (g n) (A 1 n)) ; Del ejercicio (A 1 10) se que obtendre 2 elevado a la n

(define (h n) (A 2 n)) ; Bueno segun lo que busque encontraremos tetración, que sera 2 tetrado n. 
#lang racket
; Exercise 1.3
; Cree una función que tome 3 argumentos y retorne la suma de los cuadrados de los dos numeros más grandes

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))


(define (sum-of-squares-of-the-largest x y z)
  (cond ((> x y) (if (> y z) (sum-of-squares x y) (sum-of-squares x z)))
        ((> x z) (sum-of-squares x y))
        (else (sum-of-squares y z))))

(sum-of-squares-of-the-largest 1 2 3)
(sum-of-squares-of-the-largest 2 3 1)
(sum-of-squares-of-the-largest 3 1 2)
(sum-of-squares-of-the-largest 1 3 2)
(sum-of-squares-of-the-largest 2 1 3)
(sum-of-squares-of-the-largest 3 2 1)

; otra forma seria

(define (sum-of-squares-of-the-two-largest x y z)
  (cond ((and (<= x y) (<= x z))
         (sum-of-squares y z))
        ((and (<= y x) (<= y z))
         (sum-of-squares x z))
        (else
         (sum-of-squares y x))))

(sum-of-squares-of-the-two-largest 1 2 3)
(sum-of-squares-of-the-two-largest 2 3 1)
(sum-of-squares-of-the-two-largest 3 1 2)
(sum-of-squares-of-the-two-largest 1 3 2)
(sum-of-squares-of-the-two-largest 2 1 3)
(sum-of-squares-of-the-two-largest 3 2 1)
  
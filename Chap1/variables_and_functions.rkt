#lang racket
; associate names with values
(define size 2)
(define pi 3.14)

;compound procedure and associates it with a name
(define (square x)  (* x x))
(square 2)

(define (sum x y) (+ x y))
(sum 4 6)

(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 2 3)

  
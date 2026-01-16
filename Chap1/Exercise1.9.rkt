#lang racket
; Exercise 1.9

(define (inc x) (+ x 1))

(define (dec x) (- x 1))

;procedure 1

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;procedure 2
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

; estos procesos son recursivos, el primero genera un proceso recursivo lineal y el segundo un proceso iterativo

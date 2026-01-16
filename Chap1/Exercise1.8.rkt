#lang racket

;Exercise 1.8


(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3 ))


(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.001))


(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))


(cube-root 8)
(cube-root 27)
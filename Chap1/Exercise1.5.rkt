#lang racket
(define (p) (p))

(define size 2)
size

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

size

; bueno como sabemos se usa applicative-orden evaluation por defecto entonces al ejecutar este programa nos quedaremos
; en un bucle infinito, una recursion que intenta evaluar a p.
; Pero si usaramos normal-orden evaluation entonces el programa si tendria final ya que con la expresion (test 0 (p))
; no necesitariamos definir el valor de p, ya que no usamos el argumento p en ningun momento en test, porque de una se evalua el x = 0

#lang racket
; Exercise 1.4
; Describa el comportamiento de el siguiente procedimiento

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; es una funcion que primero mira si b es positivo, si no lo es entonces se dara la ilusion
; de que aplicara abs a b, en verdad se le resta b a a, y luego se sumara con a
; si b es positivo entonces se sumara directamente con a

(a-plus-abs-b 5 -4)
(a-plus-abs-b 5 4)
      
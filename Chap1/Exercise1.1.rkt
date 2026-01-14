#lang racket
; Exercise 1.1
; Cuál es el resultado imprimido por el interprete en respuesta a cada expresion ?

10 ; 10

(+ 5 3 4) ; 12

(- 9 1) ; 8

(/ 6 2) ; 3

(+ (* 2 4) (- 4 6)) ; 6

(define a 3) ; no imprime nada pero guarda 3 en a

(define b (+ a 1)) ; no imprime nada pero guarda 4 en b

(+ a b (* a b)) ; 19

(= a b) ; #f

(if (and (> b a) (< b (* a b)))
    b
    a) ; imprime b, o sea 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ; evalua la expresion 2, imprime 16

(+ 2 (if (> b a) b a)) ; el if da true y retorna 4, despues se suma con dos y el resultado: 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ; evalua la expresion 2 y lo multiplica con la evaluacion de (+ a 1), como resultado: 16




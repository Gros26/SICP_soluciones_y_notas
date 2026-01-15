#lang racket

(require "sqrt_by_newtons_methond.rkt")

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                      x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 4) ; El programa no termina
; El programa no termina porque se queda evaluando expr2 infinitamente para hallar su valor,
; ni siquiera logra entrar a new-if

; Esto debido al orden aplicativo y esque evaluamos los argumentos que nos pasan para hallar su valor
; al contrario cuando usamos un if, que es una forma especial, este lo que hace es decidir cual de las dos expresiones evaluar

; En orden aplicativo una funcion nunca decide que se evalua solo decide que resultado se devuelve
#lang racket

;Exercise 1.7
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.00000000001) ; 0.0312500001065625
(sqrt 0.0000000001) ;  0.03125000106562499
(sqrt 0.000000001) ; 0.03125001065624928

;lo que vemos para numeros muy pequeñso esque el margen de error que es de 0.001 llega a ser mas grande
; que nuestro x o el guess al cuadrado. Por esto obtenemos malos resultados

(sqrt 20000000000) ; 141421.35623730952
(sqrt 200000000000) ; 447213.595499958
(sqrt 2000000000000) ; 1414213.5623730952

; Para numeros muy grandes el error viene de que no se puede medir bien, hay numeros que se pierden en las operaciones
; y obtenemos salidas incoherentes


; Solución: alternativa al anterior good-enough?
; cambiar hasta que llega un punto en que guess no hace un cambio tan radical,
; sino que llega a un umbral de cambio insignificante



(define (good-enough?2 guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (sqrt-iter2 guess x)
  (if (good-enough?2 guess x)
      guess
      (sqrt-iter2 (improve guess x)
                 x)))

(define (sqrt2 x)
  (sqrt-iter2 1.0 x))


(sqrt2 0.00000000001) ; 0.001953126706659858
(sqrt2 0.0000000001) ;  0.001953142066571737
(sqrt2 0.000000001) ; 0.0019532956630331404



(sqrt2 20000000000) ; 141421.35623730952
(sqrt2 200000000000) ; 447213.595499958
(sqrt2 2000000000000) ; 1414213.5623730952

; los resultados siguen sin ser perfectos, pero algunos cambiaron y se ajustan un poco mas al numero buscado
; sigue fallando por efectos del punto flotante se podria decir
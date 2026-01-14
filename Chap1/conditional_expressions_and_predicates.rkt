#lang racket

(define x 2)
(> x 0) ; #t
x
(- x)

; aqui solo #f es falso, todo lo demas es verdadero, no como en otros lenguajes
; que tenemos el falsie que el cero por ejemplo es falso, aqui no. Ejemplo
(if 0 'si 'no ) ; si, en otros lenguajes daria falso, cosa que aqui no


; creemos una funcion abs (valor absoluto), usando cond
; la forma de cond es
; (cond (<p1> <e1>)
;       (<p2> <e2>)
;       .
;       .
;       .
;       (<p_n> <e_n>)

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 3) ; 3
(abs 0) ; 0
(abs -23) ; 23

; otra forma seria usando else, para tener una clausula final que garantiza que se ejecute si o si

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))
(abs2 3) ; 3
(abs2 0) ; 0
(abs2 -23) ; 23

; otra forma usando if, su forma es
; (if <predicate> <consequent> <alternative>)
; o sea, usamos if cuando hay precisamente dos casos posibles

(define (abs3 x)
  (if (< x 0)
      (- x)
      x))
(abs3 3) ; 3
(abs3 0) ; 0
(abs3 -23) ; 23

; veamos entonces los logical composition operations

(and (> 2 0) (> 3 0)) ; #t
(and (> 2 0) (< 3 0)) ; #f

(or (> 2 0) (> 3 0)) ; #t
(or (< 2 0) (> 3 0)) ; #t
(or (< 2 0) (< 3 0)) ; #f

(< 2 3) ; #t
(not (< 2 3)); #f

; un ejemplo de como usar esto seria ver si un numero esta dentro de el rango 5 < x < 10:

(and (> x 5) (< x 10)) ; x esta definido como 2 arriba, entonces da #f

;otro ejemplo: un numero es mayor que o igual que otro

(define (gt-or-equal x y)
  (or (> x y) (= x y)))
(gt-or-equal 3 4) ; #f

; otra forma seria


(define (>= x y)
  (not (< x y)))
(>= 3 4) ; #f


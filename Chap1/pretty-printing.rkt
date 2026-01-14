#lang racket
; esto
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
; se puede hacer mas legible usando pretty-printing
(+ (* 3
      (+ (* 2 4)
         (+ 3 5) ) )
   (+ (- 10 7)
      6))


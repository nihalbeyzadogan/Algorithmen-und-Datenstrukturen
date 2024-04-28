#lang racket

;Blatt1 Aufgabe1
;(define x
  ;(- (/ (+ 9 6 ) (* 5 (- 3 1))) (*(- (/ 7 8) 2) 4) ))
;x

;Blatt1 Aufgabe2
;(define (g u v w)
 ; (+ (/ (- u ( * 7 u)) (- u w)) (/ (+ u v) (- (* 6 w) v))))
;(g 1 2 3)
;(g 3 11 2)


;Aufgabe3
;;(define (my-max x y)
;(if (> x y ) x y) ) veya (cond ((> x y) x) (else y))) 
;(my-max 5 2)
;(my-max 10 23)
;(my-max 5 5)

;Aufgabe4
;(define (groesser-zehn? x)
;  (< 10 x))
;(groesser-zehn? 7)
;(groesser-zehn? 10)
;(groesser-zehn? 13)

;Aufgabe5
;(define (groesserep? x y z)
 ; (> (+ x y) z))
;(groesserep? 4 5 6)
;(groesserep? 3 3 6)

;Aufgabe6
;(define (quadrat x) (* x x))
;(define (squared-max x y z)
;  (cond ((and (<= (quadrat x) (quadrat y)) (<= (quadrat z) (quadrat y)))
 ;                 (quadrat y))
  ;       ((and (<= (quadrat y) (quadrat x)) (<= (quadrat z) (quadrat x)))
   ;               (quadrat x))
    ;     (else (quadrat z))
    ;     )) veya
;(define (quadrat x) (* x x))

; (define (sm x y z)
 ;  (sm2 (quadrat x) (quadrat y) (quadrat z)))

 ;(define (sm2 x y z)
  ; (cond ((and (>= x y) (>= x z)) x)
   ;      ((and (>= y z) (>= x z)) y)
    ;     ((and (>= z x) (>= z y)) z)))
; (squared-max -3 7 -9)
; (squared-max 2 7 5)



 
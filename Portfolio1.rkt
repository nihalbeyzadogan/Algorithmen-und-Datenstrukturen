#lang racket
;a1
(define (f a b c d e)
  (or (and a b d e) (not (or (and c a d) (not (and a c ))))))
  (f #f #f #f #t #t )

;a2
(define (tetraederzahl n)
  (/ (* n (+ n 1) (+ n 2)) 6))
(tetraederzahl 1)
(tetraederzahl 6)

;a3 1.
(define  (n kwh) (* kwh 0.20))
(define (preis kwh)
  [cond ((< kwh 2000)  (* kwh 1.1 0.2))
        ((>= kwh 3500) (* kwh 0.95 0.2))
        (else  (n kwh))]
  )
;a3 2.
(define  (n kwh) (* kwh 0.20))
(define (preis kwh)
  [cond ((< kwh 2000)  (+ (n kwh) (* (n kwh) 0.1)))
        ((>= kwh 3500) (- (n kwh) (* (n kwh) 0.05)))
        (else  (n kwh))]
  )

(preis 2500)
(preis 3000)
(preis 4000)
(preis 1000)
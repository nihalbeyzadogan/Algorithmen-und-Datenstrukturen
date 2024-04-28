#lang racket
#;üb2a1
(define (nat-wurzel x)
  (if (even? x)
      (* (/ x 2) (/ x 2))
      (* (/ (+ x 1) 2) (/ (+ x 1) 2))))
 ;(nat-wurzel 11)


#;üb2a2
(define (zahl-umdrehen x)
  (define (zahl-iter k x)
    (if (= x 0)
        k
        (zahl-iter (+ (* k 10)(remainder x 10)) (quotient x 10))))
  (zahl-iter 0 x))
;(zahl-umdrehen 597050)
;(zahl-umdrehen 4497821)


#;üb2a3
(define (aufsteigendes-produkt? a b c d)
  (and (> d c b a) (= (* a b c) d)))
;(aufsteigendes-produkt? 2 3 5 11)
;(aufsteigendes-produkt? 1 2 3 6)
;(aufsteigendes-produkt? 2 1 3 6)

#;üb2a4
;(define (f1 a b) (and (not (or a b)) (or a b) (a) (not b)))
;(define (f2 a b c) (or a (and a b (not c)) (and (not a) c) (and (not (and a b)) c)))
;(define (f3 a b c d) (and (and (or a (not b)) (or (not a) b)) (not (or a (not b) c)) (or (not d) (not c) (not b) (not a))))



















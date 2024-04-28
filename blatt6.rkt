#lang racket
;a1
#;(define (zaehlen start ende n) (zahl-iter 10 100 n start))
#;(define (zahl-iter start ende n k)
  (if (< k start)
      0
      (if (> (* k n) ende)
          0
          (if (and (= 0 (remainder k 7)) (= 0 (remainder k 3)))
              (* n k)
              (zahl-iter start ende n (+ k 1))))))

;(zaehlen 10 100 1)
;(zaehlen 10 100 2)
;(zaehlen 10 100 3)
;(zaehlen 10 100 1337)

;a2
#;(define (stellig? n)
  (if (> n 0)
      (+ 1 (stellig? (quotient n 10)))
      0))

#;(define (gz zahl)
  (if (= (quotient zahl (expt 10 (- (stellig? zahl) 1))) (remainder zahl 10))
      zahl
      (gz (+ 1 zahl))))
;(gz 123)


;a3
#;(define (konst-addierer n)
  (lambda (x) (+ x n))
  )

;(define plus1 (konst-addierer 1))
;(plus1 98)

;a4



















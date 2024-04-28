#lang racket
;a1
(define (zaehleteiler n)
  (zaehler-iter n 2 ))
(define (zaehler-iter n a)
  (if (< a n)
      (if (= (remainder n a) 0)
          (+ 1 (zaehler-iter n (+ a 1)))
          (zaehler-iter n (+ a 1)))
      0))
     

;a2
(define (linker-index ziffer zahl)
  (linker-iter ziffer zahl 0 (stellig? zahl)))
(define (stellig? zahl)
  (if (> zahl 1)
      0
      (+ 1 (stellig? (quotient zahl 10)))
  ))
(define (linker-iter ziffer zahl a stellig)
  (if (> zahl 0)
   (if (= ziffer (remainder zahl 10) )
      (- stellig a)
      (linker-iter ziffer (quotient zahl 10) (+ a 1) stellig))
         #f))


(linker-index 7 531863)

      
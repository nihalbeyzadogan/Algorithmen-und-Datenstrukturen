#lang racket
;a1
(define (sinus-approx x)
  (if (<= x 0.1)
      x
      (- (* 3 (sinus-approx (/ x 3))) (* 4 (expt (sinus-approx (/ x 3)) 3)))))
;(sinus-approx 60)

;a2
(define (count-perm x)
  (count-iter x 1))
(define (count-iter x a)
  (if (> x 1)
      (count-iter (- x 1) (* x a))
      a))
;(count-perm 5)
;(count-perm 3)
;(count-perm 2)
;(count-perm 1)

;a3
(define (isbn-test isbn)
  (isbn-iter isbn 0 9))
(define (isbn-iter isbn a k)
  (if (not (= 10 (remainder a 11)))
      (if (> isbn 0)
       (isbn-iter (quotient isbn 10) (+ a (* k (remainder isbn 10))) (- k 1))
       a)
      "X"))

(isbn-test 392511825)
(isbn-test 026201153)
(isbn-test 344615497)



      ;(if (isbn-iter (+ isbn (* (quotient isbn 10) a)) (+ a 1)))))





;a4
(define (zk rz hz rk hk)
  (/ (* pi (expt rz 2) hz) (* (/ 1 3) pi (expt rk 2) hk)))
;(zk 3 5 3 5)













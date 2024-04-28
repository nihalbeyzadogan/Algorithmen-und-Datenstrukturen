#lang racket
;a1
#;(define (fakt n) (fakt-iter n 1))
#;(define (fakt-iter n a)
  (if (< a n)
      (* n (fakt-iter (- n 1) a))
      1))
#;(define (eueler n)
  (if (<= n 0)
      1
      (+ (/ 1 (fakt n)) (eueler (- n 1)))))

;(eueler 0)
;(eueler 1)  
;(eueler 2)
;(eueler 27)

;a2
#;(define (ackermann n m)
  (cond ((= n 0) (+ m 1))
        ((= m 0) (ackermann (- n 1) 1))
        (else (ackermann (- n 1) (ackermann n (- m 1))))))
;(ackermann 0 0)
;(ackermann 0 1)
;(ackermann 3 1)

;a3
#;(define (osterformel j)
  (let ((a (remainder j 19)))
    (let ((b (remainder j 4)))
      (let ((c (remainder j 7)))
        (let ((k (floor (/ j 100))))
          (let ((p (floor (/ (+ (* 8 k) 13) 25))))
            (let ((q (floor (/ k 4))))
              (let ((M (remainder (- (+ 15 k) p q) 30)))
                (let ((N (remainder (- (+ 4 k) q) 7)))
                  (let ((d (remainder (+ (* 19 a) M) 30)))
                    (let ((e (remainder (+ (* 2 b) (* 4 c) (* 6 d) N) 7)))
                      (let ((o (+ 22 d e))) o))))))))))))

;a4
#;(define (maxziffer n) (max-iter n 0))
#;(define (max-iter n max)
  (if (< n 9)
      max
      (if (< (remainder n 10) max)
          (max-iter (quotient n 10) max)
          (max-iter (quotient n 10) (remainder n 10)))))
;(maxziffer 347)
;(maxziffer 89451639)
;(maxziffer 1110111)

;a5
#;(define (sum x y)
  (define (n x) (+ 1 x))
  (if (= y 0)
      x
      (n (sum x (- y 1)))))

;a6
#;(define (mul x y)
    (define (sum x y)
      (define (n x) (+ 1 x))
      (if (= y 0)
          x
          (n (sum x (- y 1)))))
    (if (= 0 y)
        0
        (sum x (mul x (- y 1)))))

;a7
#;(define (q n)
  (if (<= n 2)
      1
      (+ (q (- n (q (- n 1)))) (q (- n (q (- n 2)))))))
;(q 15) 
;(q 16)
;(q 35)






   







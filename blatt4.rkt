#lang racket
;a1
#;(define (ganzzahlige-wurzel? za) (wurzel-iter za 1))
#;(define (wurzel-iter za kat)
    (if (= za kat)
        #f
        (if (= (/ za kat) kat)
            #t
            (wurzel-iter za (+ kat 1)))))

;(ganzzahlige-wurzel? 49)

;a2
#;(define (fakt n) (iter n (ceiling (sqrt n))))
#;(define (iter n a)
  (if (even? n)
      2
      (let ((b (sqrt (- (sqr a) n))))
        (if (integer? b)
            (- a (sqrt (sqr b)))
            (iter n (+ a 1) )))))
;(fakt 2183)
;(fakt 25)
;(fakt 100)
;(fakt 11)


;a3
#;(define (primzahl? n)
    (prim-iter n 2))
#;(define (prim-iter n x)
    (if (< x n)
        (if (integer? (/ n x)) ;(opsiyonel) (= (remainder n x) 0)
            #f
            (prim-iter n (+ x 1)))
        #t)) 
          
;(primzahl? 121) ;f
;(primzahl? 5) ;t
;(primzahl? 22) ;f
;(primzahl? 121) ;f

;a4
;(define (kubiksumme x) (kubik-iter x 0))
#;(define (kubik-iter x n)
  (if (= 0 x)
      (* n n n)
      (kubik-iter (quotient x 10) (+ n (remainder x 10)))))
      
       ;(kubiksumme 34567)

;a5
;(define (caesar_encrypt x n) (caesar-iter x n 0 (stellig? x)))
#;(define (stellig? x )
  (if (< x 1)
      0
      (+ 1 (stellig? (quotient x 10)))))
#;(define (caesar-iter x n k s)
  (if (= k s)
      0
       (if (>= (+ (remainder x 10) n) 10)
          (+ (* (- (+ (remainder x 10) n) 10) (expt 10 k)) (caesar-iter (quotient x 10) n (+ 1 k) s))
          (+ (* (+ (remainder x 10) n) (expt 10 k)) (caesar-iter (quotient x 10) n (+ 1 k) s)))))
  
 ; (caesar_encrypt 1234 2)

  




   
       
#lang racket
;bozukluklar
#;(define (sum-coins)
  (lambda (p n d q) (+ (* p 0.01) (* n 0.05) (* d 0.1) (* q 0.25)) ))
;((sum-coins) 2 3 2 1)

;tiyatro ticket 20 zarar var kişi başına 0.5 zarar var kaaarım ne?
#;(define (ticket)
  (lambda (n o) (- (+ (* n 5) (* o 2.5)) (+ (* n 0.5) (* o 0.5 ) 20))))
;((ticket) 10 10)

#;(define (ticket n o)
  ((lambda (gn go) (- (+ gn go) (+ (* n 0.5) (* o 0.5 ) 20)))
   (* n 5) (* o 2.5)))
;(ticket 10 10)

;
#;(define (tax l z m)
  ((lambda (tl tz tm) (or (tl) (* tz 1.15) (* tm 1.28))) (< l 240) (and (<= z 480) (> z 240) (> m 480))))
;(tax 0 0 450)


;Develop the function tax, which consumes the gross pay and produces the amount of tax owed. For a gross pay of $240 or less, the tax is 0%; for over $240 and $480 or less, the tax rate is 15%; and for any pay over $480, the tax rate is 28%.
#;(define (tax n)
  (if (< n 240)
      n
      (if (and (<= n 480) (> n 240))
          (* n 1.15)
          (* n 1.28))))
#;(define (tax n)
  (let ([az 240]
        [çok 480]
        [zam 1.15]
        [çokzam 1.28])
    (if (< n az)
        n
        (if (> n çok)
            (* n çokzam)
            (* n zam))))) 
;(tax 450)

;İndirim miktarı
#;(define (discount organization)
  (let ((discount-rate
         (cond ((equal? organization 'AAA) 0.10)
               ((or (equal? organization 'ACM) (equal? organization 'IEEE)) 0.15)
               ((equal? organization 'UPE) 0.20)
               (else 0.00))))
    (display (* 100 discount-rate))
    (display "%")))

;(discount 'AAA)

;not sorusu
#;(define (note mit fin co)
  (if (false? co)
      "Kaldın ihtiyar"
      (if (>=  (+ (* 0.40 mit) (* 0.60 fin)) 85)
          "A"
          (if (and (>= (+ (* 0.40 mit) (* 0.60 fin)) 70) (<= (+ (* 0.40 mit) (* 0.60 fin)) 84))
              "B"
              (if (and (>= (+ (* 0.40 mit) (* 0.60 fin)) 55) (<= (+ (* 0.40 mit) (* 0.60 fin)) 69))
                  "C"
                  "NR")))))

;(note 55 65 #t)
;(note 80 90 #t)     

;palindrome
(define (stellig? n)
  (if (> n 0)
      (+ 1 (stellig? (quotient n 10)))
      0))

(define (palindrome? n)
  (define (palindrome-helper n reversed)
    (if (= n 0)
        reversed
        (palindrome-helper (quotient n 10)
                           (+ (* reversed 10)
                              (remainder n 10))))))

(define (is-palindrome n)
  (= n (palindrome-helper n 0)))
            
     























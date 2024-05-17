#lang racket
;a2
#;(define (expandiere sym-liste) (iter sym-liste 1 '()))
#;(define (iter sym-liste a k)
  (if (null? sym-liste)
      '()
      (if (= a 1)
          (if (integer? (car sym-liste))
              (iter (cdr sym-liste) (car sym-liste) (cadr sym-liste))
              (cons (car sym-liste) (iter (cdr sym-liste) a k)))
          (cons k (iter sym-liste (- a 1) k)))))

;(expandiere '(7 b a 3 c))
;(expandiere '(2 b 2 b c))

;a3
#;(define (loeschen liste n) (iter liste n 1))
#;(define (iter liste n a)
  (if (> a n)
      liste
      (iter (cdr liste) n (+ a 1))))

;(loeschen '(2 3 4 5 6 7) 3)




























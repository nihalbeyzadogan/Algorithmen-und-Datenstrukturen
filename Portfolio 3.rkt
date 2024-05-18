#lang racket
;a1
(define (anpassen liste) (iter liste '()))
(define (iter liste  k)
  (if (empty? liste)
      k
      (if (even? (car liste))
          (if (= (remainder (car liste) 10) 0)
              (iter (cdr liste ) (append k (list (sqr (car liste)))))
              (iter (cdr liste) (append k (list (car liste)))))
          (iter (cdr liste) k))))
(anpassen (list 5 9 10 12 20))

;a2
(define (gleich? liste) (iter liste 0 0))
(define (iter liste n p)
  (if (empty? liste)
      (if (= n p)
          #t
          #f)
      (if (< (car liste) 0)
          (iter (cdr liste) (+ n 1) p)
          (iter (cdr liste) n (+ p 1)))))

(gleich? '(1 3 4 -2 3 -5 -6 -7))


;a3
(define (sortieren liste praedikat)
  (flatten (sort liste praedikat)))
(define (sort liste praedikat)
  (group-by praedikat liste))

(sortieren '(1 2 3 4 5 6 7 8 9) odd?)













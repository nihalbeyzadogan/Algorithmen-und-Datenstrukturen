#lang racket
;a1



;a2
#;(define (liste-teilen eingabe) (iter eingabe '() '()))
#;(define (iter eingabe l r)
  (if (empty? eingabe)
      (list l r)
      (if (even? (car eingabe))
          (iter (cdr eingabe) l (append r (list (car eingabe))))
          (iter (cdr eingabe) (append l (list (car eingabe))) r))))
  
;(liste-teilen '(1 2 3 4 5 6 7 8 9))


;a3
#;(define (listver eingabe) (iter eingabe (car eingabe) (cadr eingabe)))
#;(define (iter eingabe l r)
  (if (empty? r)
      (if (empty? l)
          '()
          (list (car l)))
      (cons (car l) (cons (car r) (iter eingabe (cdr l) (cdr r))))))

;(listver '((1 3 5 7 9) (2 4 6 8)))



;a4
#;(define (hamming l r) (iter l r 0))
#;(define (iter  l r a)
  (if (empty? l)
      a
      (if (= (car l) (car r))
          (iter  (cdr l) (cdr r) a)
          (iter  (cdr l) (cdr r) (+ 1 a)))))


;(hamming '(1 0 1 1 0 1 0 1) '(0 1 1 1 0 1 0 0))      
;(hamming '(1 0 1) '(1 0 1)) 









           

#lang racket
;a1
#;(define (loesche liste praedikat)
  (if (praedikat (car liste))
      (loesche (cdr liste) praedikat)
       liste))
;(loesche (list 4 6 8 3 2 4 5) even?)

;a2
;(define (drehe liste) (dreheiter liste '()))
#;(define (dreheiter liste bos)
  (if (empty? liste)
      bos
      (dreheiter (cdr liste) (cons (car liste) bos))))
;(drehe (list 1 2 3))
;(drehe (list 1 2 (list 2 3)))

;a3
#;(define ( typ-or typ1 typ2)
  (lambda (x) (or (typ1 x) (typ2 x))))
;(define paar-oder-liste? (typ-or pair? list?))
;(define integer-oder-boolean? (typ-or integer? boolean?))
;(integer-oder-boolean? (paar-oder-liste? (cons 1 2)))


;a4
#;(define (operation operatoren n)
  (define (operationiter operatoren n)
    (if (= n 1)
        (car operatoren)
        (operationiter (cdr operatoren) (- n 1))))
  (lambda (x) ((operationiter operatoren n) (car x) (cadr x))))
;(define plus (operation (list + - * /) 4))
;(plus (list 1 2))

;a5
#;(define (caesar_encrypt_list data key) (caesariter data key key '()))
#;(define (caesariter data key zkey n)
  (if (empty? key)
      (caesariter data zkey zkey n)
      (if (empty? data)
          n
          (caesariter (cdr data) (cdr key) zkey (cons (remainder (+ (car data) (car key)) 10) n)
          ))))
        
      
;(caesar_encrypt_list (list 1 2 3 4 5 6) (list 1 3 3 7))

#;(define (caesar_encrypt_list data key)(caesar_encrypt_list_iter data key key))
#;  (define (caesar_encrypt_list_iter data key key_backup)
    (if (null? data)
        (list)
        (if (null? (cdr key))
            (cons (remainder (+ (car data) (car key)) 10) (caesar_encrypt_list_iter (cdr data) key_backup key_backup))
            (cons (remainder (+ (car data) (car key)) 10) (caesar_encrypt_list_iter (cdr data) (cdr key) key_backup)))))

#;(caesar_encrypt_list
(list 1 2 3 4 5 6) (list 1 3 3 7))







  
  






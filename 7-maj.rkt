#lang racket

; 7. Write a function maj in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing a 1 where two or more
; of x, y and z contain 1’s, and 0 otherwise. For example:
; > (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 0 0 1 0 1 1 1)

; function get sublist, take first char from x, y & z.
; e.g. x => 1 0 0   y => 1 0 1   z => 0 1 0
;     subList => 1 1 0
(define (newList x y z)
    (cons (car x) (cons (car y) (cons (car z) null))))

; function to calculate value, take resullt from 'newList'
; e.g. (list 1 1 0) => 1
;      (list 0 1 0) => 0  ... ...
; check first 2 elements, if they are same then return anyone of them,
; otherwise return the third element
(define (cal l)
    (if (= (car l) (car (cdr l)))
        (car l)
        (car (cdr (cdr l)))))

; cobine two functions above
(define (maj x y z)
    (if (null? x)     ; recursion
        null
        (cons (cal (newList x y z)) (maj (cdr x) (cdr y) (cdr z)))))

(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; All functions above can be writen into one as this:
;; (define (maj x y z)
;;     (if (null? x)  ; (x, y & z have same size)
;;         null
;;         (if (= (car x) (car y)) ; if x is 0 , take ele from z, otherwise take from y
;;             (cons (car x) (maj (cdr x) (cdr y) (cdr z)))
;;             (cons (car z) (maj (cdr x) (cdr y) (cdr z))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

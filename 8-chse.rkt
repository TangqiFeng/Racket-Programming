#lang racket

; 8. Write a function chse in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing the elements of y in
; the positions where x is 1 and the elements of z otherwise. For example:
; > (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 1 0 1 0 0 1 1)

(define (chse x y z)
    (if (null? x)  ; (x, y & z have same size)
        null
        (if (= (car x) 0) ; if x is 0 , take ele from z, otherwise take from y
            (cons (car z) (chse (cdr x) (cdr y) (cdr z)))
            (cons (car y) (chse (cdr x) (cdr y) (cdr z))))))

(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
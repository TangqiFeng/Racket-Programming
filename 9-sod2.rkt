#lang racket

; 9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing a 1 where the number of
; 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
; For example:
; > (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 1 1 0 1 0 0 1)


; first check x = y. if true, result is z, whatever x = y = 0 or 1.
; if x != y, it means x=1,y=0 or x=0,y=1
; then, if z = 0, the result should be 1, 
;       if z = 1, the result should be 0.
(define (sod2 x y z)
    (if (null? x)  ; (x, y & z have same size)
        null
        (if (= (car x) (car y))
            (cons (car z) (sod2 (cdr x) (cdr y) (cdr z)))
            (if (= (car z) 0)
                (cons 1 (sod2 (cdr x) (cdr y) (cdr z)))
                (cons 0 (sod2 (cdr x) (cdr y) (cdr z)))))))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
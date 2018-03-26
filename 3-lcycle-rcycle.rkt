#lang racket

; 3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
; list as input and returns the list cyclically shifted one place to the left. The second
; is called rcycle, and it shifts the list cyclically shifted one place to the right.
; For example:
; > (lcycle (list 1 2 3 4 5))
; '(2 3 4 5 1)
; > (rcycle (list 1 2 3 4 5))
; '(5 1 2 3 4)

; first, define a reverse function
(define (rev l)
    (define (rev-aux l m)
        (if (null? l)
            m
            (rev-aux (cdr l) (cons (car l) m))))
    
    (rev-aux l null))

; (rev (list 1 2 3 4 5)) => '(5 4 3 2 1)

; lcycle function: (1 2 3 4 5)
; => (1)(2 3 4 5) => (1)(5 4 3 2)
; => (2 3 4 5 1)
(define (lcycle l)
    (if (null? l)        ;check l is null
        null
        (if (null? (cdr l))    ;check l is not the last element
            (car l)
            (rev (cons (car l) (rev (cdr l)))))))

(lcycle (list 1 2 3 4 5))

; rcycle function: (1 2 3 4 5)
; => (5 4 3 2 1) => (5)(4 3 2 1)
; => (5 1 2 3 4)
(define (rcycle l)
    (if (null? l)        ;check l is null
        null
        (if (null? (cdr l))    ;check l is not the last element
            (car l)
            (cons (car (rev l))(rev (cdr (rev l)))))))

(rcycle (list 1 2 3 4 5))

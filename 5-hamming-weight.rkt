#lang racket

; 5.Write a function hamming-weight in Racket that takes a list l as input and returns
; the number of non-zero elements in it. For example:
; > (hamming-weight (list 1 0 1 0 1 1 1 0))
; 5

; remove zeros
(define (rmZero l)
    (if (null? l)
        null
        (if (= (car l) 0)
            (rmZero (cdr l))
            (cons (car l) (rmZero (cdr l))))))

; count length of list
; same as (length list)
(define (count l)
    (if (null? l)
        0
        (+ 1 (count (cdr l)))))

; use length function to get the number of 1s
(define (hamming-weight l)
    (count (rmZero l)))

(hamming-weight (list 1 0 1 0 1 1 1 0))
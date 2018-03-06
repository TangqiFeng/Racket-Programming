#lang racket

; 6.Write a function hamming-distance in Racket that takes two lists and returns the
; number of positions in which they differ. For example:
; > (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
; 5

; compare two lists, return a new list
; (if such bit is the same, add '1' to the new list)
(define (compare m n)
    (if (null? m) ; or (null? n) ==> list m and n have the same length
        null
        (if (= (car m) (car n))
            (compare (cdr m) (cdr n))
            (cons 1 (compare (cdr m) (cdr n))))))

(define (hamming-distance m n)
    (length (compare m n)))


(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
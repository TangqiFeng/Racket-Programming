#lang racket

; 2. Write, from scratch, a function in Racket that takes a positive integer n0 as input
; and returns a list by recursively applying the following operation, starting with the
; input number.
;               ni+1  =  3ni + 1     if n is odd
;                        ni ÷ 2      otherwise
; End the recursion when (or if) the number becomes 1. Call the function collatz-list.
; So, collatz-list should return a list whose first element is n0, the second element
; is n1, and so on. For example:
; > (collatz-list 5)         '(5 16 8 4 2 1)
; > (collatz-list 9)         '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
; > (collatz-list 2)         '(2 1)

(define (collatz-list m)
    (if (eq? m 1)     ; m = 1 is the terminal condition 
        (cons m null)
        (if (eq? (modulo m 2) 0)  ; check n is/not an even number
            (cons m (collatz-list (/ m 2)))
            (cons m (collatz-list (+ 1 (* 3 m)))))))

(collatz-list 5)
(collatz-list 9)
(collatz-list 2)
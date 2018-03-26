#lang racket

; 10. Write a function lstq in Racket that takes as arguments two lists l and m of equal
; length and containing numbers. It should return d, the distance given by the sum of
; the square residuals between the numbers in the lists:
;               d = sum(i)[(li − mi)^2]
; This means take the i
; th element of m from the i
; th element of l and square the result
; for all i. Then add all of those to get d. For example:
; > (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
; 54.61

; sum function takes two parameters (x,y), return value of x+y
(define (sum x y)
    (+ x y))

; distance function takes two parameters (x,y), return value of x-y
(define (distance x y)
    (- x y))

; square function takes one parameter (x), return value of x^2
(define (square x)
    (* x x))

; main lstq function
(define (lstq l m)
    (if (null? l) ; or (null? m) cause list m and l have equal length
        0
        (sum (square (distance (car l) (car m))) 
            (lstq (cdr l) (cdr m)))))

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
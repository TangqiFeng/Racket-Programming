#lang racket

; 4. Write a function sublsum in Racket that takes a list (of integers) as input and 
; returns a list of sublists of it that sum to zero. For this problem, you can use the
; combinations built-in function. Note the order of the sublists and their elements
; doesn’t matter. For example:
; > (sublsum (list 1 2 3 4 -5))
; '((2 3 -5) (-5 1 4))
; > (sublsum (list 1 2 3 4 5))
; '()

; get sum of elements in a list
(define (sum s)
    (if (null? s)
        0
        (+ (car s) (sum (cdr s)))))

; test sum
(sum (list 1 2 3 4))

; function 'combinations' return a list of all combinations of elements in the input list
; if sum() each element is 0, then leave it, otherwise put null instead
(define (cal-sublsum l)
    (map (lambda (li) 
        (if (= 0(sum li))
            li
            null))
        (cdr (combinations l)))) ; remove first '()

; remove all '() from a list 
(define (remove-blank lst)
    (if (null? lst)
        null
        (if (null? (car lst))
            (remove-blank (cdr lst))
            (cons (car lst) (remove-blank (cdr lst))))))

; this function combines three functions above
(define (sublsum ll)
    (remove-blank (cal-sublsum ll)))
    
(sublsum (list 1 2 3 4 -5))
(sublsum (list 1 2 3 4 5))

#lang racket

; 3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
; list as input and returns the list cyclically shifted one place to the left. The second
; is called rcycle, and it shifts the list cyclically shifted one place to the right.
; For example:
; > (lcycle (list 1 2 3 4 5))
; '(2 3 4 5 1)
; > (rcycle (list 1 2 3 4 5))
; '(5 1 2 3 4)

; append command: https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28quote._~23~25kernel%29._append%29%29
(define (lcycle l)
    (append (cdr l) (cons (car l) null)))

(lcycle (list 1 2 3 4 5))


#lang racket

; 1. Write, from scratch, a function in Racket that uses a brute-force algorithm that
; takes a single positive integer and return true if the number is a prime and false 
; otherwise. Call the function decide-prime

; from: https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion

(define (prime? m)
    ; insert a loom function(checking if/not can be devide by [2 ~ m-1])
    (define (step a b)
        (cond
            ((= b 1) #t)
            (else (if(eq? (modulo a b) 0)
                #f
                (step a (- b 1))))))
    ; first check m is 1( 1 is not a prime number)
    (if (= m 1)
        #f
        (step m (- m 1))))


(prime? 1)
(prime? 2)
(prime? 3)
(prime? 4)
(prime? 5)
(prime? 6)
#lang racket

; 1. Write, from scratch, a function in Racket that uses a brute-force algorithm that
; takes a single positive integer and return true if the number is a prime and false 
; otherwise. Call the function decide-prime

; adapt from: https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion

(define (decide-prime m)
    ; insert a loop function(checking if/not can be devide by [2 ~ m-1])
    (define (step a b)
        (if (= b 1)
            #t
            (if (= (modulo a b) 0)
                #f
                (step a (- b 1)))))
    ; first check m is 1( 1 is not a prime number)
    (if (= m 1)
        #f
        (step m (- m 1))))


(decide-prime 1) ;#f
(decide-prime 2) ;#t
(decide-prime 3) ;#t
(decide-prime 4) ;#f
(decide-prime 5) ;#t
(decide-prime 6) ;#f
(decide-prime 7) ;#t

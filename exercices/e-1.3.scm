(define (square x) (* x x))
(define (sumsquare x y) (+ (square x) (square y)))
(define (fun a b c) 
    (cond 
        ((and (<= a b) (<= a c) ) (sumsquare b c))
        ((and (<= b a) (<= b c) ) (sumsquare a c))
        (else (sumsquare a b))))
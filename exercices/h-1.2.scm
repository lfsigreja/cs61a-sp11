(define (squares x)
  (define (square y)
    (* y y ))
  (if (null? x)
    '() 
    (cons (square (first x)) (squares (cdr x)))))

(define (ordered? x)
  (define (isnextnumber? x y)
    (equal? y (+ x 1)))

  (if (or (null? x) (null? (cdr x)))
      #t
      (if (isnextnumber? (car x) (cadr x))
          (ordered? (cdr x))
          #f)))

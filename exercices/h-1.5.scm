(define (ends-e x)
  (define (ends-e? word)
    (if (equal? (last word) '(e))
        word
        '()))
  (cond ((null? x) '())
      ((cons (ends-e? (first x)) (ends-e (cdr x))))))

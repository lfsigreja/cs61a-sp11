(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; This function returns + if b > 0 or - if b < 0. And it's evaluation allows the evaluation of a b.
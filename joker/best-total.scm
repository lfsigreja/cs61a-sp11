(load "higher-order")

(define (best-total hand)
  (let ((total (bt hand 0)))
    (if (> total 21)
      999
      total)))

(define (bt hand total)
  (if (empty? hand)
    total
    (let* ((current-card (first hand))
           (current-card-points (card-points current-card))
           (next-hand (butfirst hand)))
      (cond ((empty? hand) total)
            ((card-ace? current-card)
             (max-less-than-21
               (map (try-bt-with-value next-hand total) (ace-possible-points))))
            ((card-joker? current-card)
             (max-less-than-21
               (map (try-bt-with-value next-hand total) (joker-possible-points))))
            (else
              (max-less-than-21
                (map (try-bt-with-value next-hand total) (numeric-possible-points current-card-points))))))))

(define (ace-possible-points)
  '(1 11))

(define (joker-possible-points)
  '(1 2 3 4 5 6 7 8 9 10 11))

(define (numeric-possible-points points)
  (sentence points))

(define (try-bt-with-value hand total)
  (lambda (value) (bt hand (+ total value))))

(define (max-less-than-21 numbers)
  (let ((numbers-less-than-21 (filter less-than-21? numbers)))
    (cond ((empty? numbers) 0)
          ((empty? numbers-less-than-21) (max-number numbers))
          (else (max-number numbers-less-than-21)))))

(define (less-than-21? num)
  (<= num 21))

(define (max-number numbers)
  (reduce
    0
    (lambda (total num) (max num total))
    numbers))

(define (card-points card)
  (cond ((card-joker? card) 11)
        ((card-ace? card) 11)
        ((card-face? card) 10)
        (else (card-value card))))

(define (card-value card)
  (butlast card))

(define (card-ace? card)
  (equal? (card-value card) 'a))

(define (card-face? card)
  (member? (card-value card) '(j q k)))

(define (card-joker? card)
  (equal? card 'jr))

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))


; Question
; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer.

; Answer
; When using applicative-order evaluation, which means apply evaluate arguments first then apply, when the (p) is evaluated it'll create an infite loop.
; Because (p) will recursively evaluate himself.
; When the interpreter uses normal order evaluation, i'd would create this:

; (if (= 0 0) 0 (p))
; since the first condition is true, (p) wont be evaluated at all. 

; The main diference between these 2 types of interpreter is: 
; applicative-order tries to evaluate everything before it's needed
; while normal order evaluation evaluate when they are required by the program flow. 

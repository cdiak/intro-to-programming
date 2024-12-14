; Exercise 1.4: Observe that our model of evaluation allows 
; for combinations whose operators are compound expressions. 
; Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The procedure a-plus-abs-b takes two arguments `a` and `b` as input 
; and returns the value of the expression `a + |b|`
; The operator `a-plus-abs-b` is a compound expression that calls an if-statement:
; if b is positive, the operator chooses + to add the two arguments: `a + b`
; if b is negative, the operator chooses - to subtract -b from a: `a - -b`
; This mimics the behavior of the expression `a + |b|`
; The if-statement is both the operator on `a` and `b` and a compound expression.
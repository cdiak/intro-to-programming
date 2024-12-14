; Exercise 1.5: Ben Bitdiddle has invented a test to determine whether the interpreter 
; he is faced with is using applicative-order evaluation or normal-order evaluation. 
; He defines the following two procedures:

(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

; Then he evaluates the expression

(test 0 (p))

; What behavior will Ben observe with an interpreter that uses applicative-order 
; evaluation? What behavior will he observe with an interpreter that uses normal-order 
; evaluation? Explain your answer. 

; Empirically, we find that the interpreter gets caught in an infinite loop. Why?
; Chezscheme uses applicative order, and in this approach to evaluation,
; we first evaluate the sub-expressions, which means that we need to evaluate (p) 
; BEFORE we apply the function `test` to 0 and p. However, (p) calls itself, so in 
; order to evaluate (p) the interpreter must evaluate (p) again, ad infinitum.

; If we were to use normal order, we would evaluate the first sub-expression (= x 0), 
; and then apply `test` to that expression. This would result in the interpreter 
; returning the value 0 and finishing procedure execution.

; The loop behavior of chezscheme proves that the interpreter is using applicative order.

; (Assume that the evaluation rule for the special form `if` is the same whether 
; the interpreter is using normal or applicative order: The predicate expression 
; is evaluated first, and the result determines whether to evaluate the consequent 
; or the alternative expression.)
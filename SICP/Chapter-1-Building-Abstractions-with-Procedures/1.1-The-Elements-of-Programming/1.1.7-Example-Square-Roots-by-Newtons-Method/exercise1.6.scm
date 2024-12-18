; Exercise 1.6: Alyssa P. Hacker doesn’t see why if needs to be provided as 
; a special form. “Why can’t I just define it as an ordinary procedure in 
; terms of cond?” she asks. Alyssa’s friend Eva Lu Ator claims this can 
; indeed be done, and she defines a new version of if:

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; What happens when Alyssa attempts to use this to compute square roots? Explain.

; Explanation: The most important difference between a special form and a procedure
; is the way that the interpreter handles its evaluation rules. For the special form "if"
; the evaluation rule is NOT what is defined in 1.1.3 where we first evaluate all of the 
; subexpressions and then apply the procedure that is the value of the leftmost subexpression 
; to the arguments that are the values of the other subexpressions.

; new-if is a procedure and hence all the subexpressions are evaluated before new-if is applied
; to the subexpressions, thus, the recursive function (guess(sqrt-iter(improve guess x)x)) means
; the eval step goes in an infinite loop at the else-clause, and we're never able to evaluate 
; the predicate.

; This is different from if, where the interpreter only interprets one of the branches, depending
; on whether it is true or false.
 ; Exercise 1.7: The good-enough? test used in computing square roots will 
 ; not be very effective for finding the square roots of very small numbers. 
 ; Also, in real computers, arithmetic operations are almost always performed 
 ; with limited precision. This makes our test inadequate for very large numbers. 
 
 ; Explain these statements, with examples showing how the test fails for small 
 ; and large numbers. 

 ; (sqrt 999999999999999999999999) hangs up the interpreter in my version of chez-scheme on M2 Silicon.
 ; (sqrt 0.0004) returns 0.0354008825558513 and (square 0.0354008825558513) returns 0.0012532224857331766

 ; good-enough? is a procedure that takes two arguments, `guess` and `x` and returns a boolean
 ; value `#t` or `#f` based on whether the absolute difference between the square of the guess and x
 ; is less than 0.001. 
 
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

 ; The procedure has four operations:
 ; <
 ; abs
 ; -
 ; square
 ; The two points of failure--very large and very small numbers--cause the interpreter to behave differently.
 ; Let's consider each in turn:

    ; For very large numbers, (square guess) can diverge significantly from x due to the limited precision of 
    ; floating-point arithmetic. As the iterative process refines the guess, numerical errors accumulate, 
    ; making it impossible for the absolute difference (abs (- (square guess) x)) to reach the tolerance level 
    ; of 0.001. This causes the program to loop indefinitely, as the condition in good-enough? is never satisfied.

    ; For very small numbers, the issue arises because the good-enough? test compares (square guess) to x 
    ; using a fixed tolerance of 0.001. If x is much smaller than 0.001, the test prematurely concludes that 
    ; the guess is good enough, even though it is far from accurate. This leads to a returned square root that, 
    ; when squared, does not closely approximate x.

 ; An alternative strategy for implementing good-enough? is 
 ; to watch how guess changes from one iteration to the next and to stop when 
 ; the change is a very small fraction of the guess. Design a square-root procedure 
 ; that uses this kind of end test. Does this work better for small and large numbers?

(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

; A guess is improved by averaging it with the quotient of the radicand and the old guess

(define (improve guess x)
  (average guess (/ x guess)))

; where

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x) 
  (< (abs (- (square guess) x)) (* x 0.0000001)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


; I originally wanted to define a tolerance variable, but this would mean changing
; around a number of functions to take three arguments instead of hard-coding a
; dynamic tolerance into good-enough? which was easier.
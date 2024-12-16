; Square Roots By Newton's Method

; Y = guess for the square root of X
; Therefore, Y*Y = X
; Thus, Y = X/Y
; And, (Y + X/Y)/2 ~= 2Y/2 ~= Y


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
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))
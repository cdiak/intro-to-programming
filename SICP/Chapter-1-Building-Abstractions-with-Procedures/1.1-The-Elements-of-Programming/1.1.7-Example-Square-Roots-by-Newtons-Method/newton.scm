; Square Roots By Newton's Method

; Y = guess for the square root of X
; Therefore, Y*Y = X
; Thus, Y = X/Y
; And, (Y + X/Y)/2 ~= 2Y/2 ~= Y

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) (* x 0.0000000001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))
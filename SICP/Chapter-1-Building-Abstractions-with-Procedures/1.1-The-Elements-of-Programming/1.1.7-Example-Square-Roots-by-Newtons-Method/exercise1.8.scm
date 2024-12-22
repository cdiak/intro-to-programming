; Exercise 1.8: Newton’s method for cube roots is based on the fact that if y
; is an approximation to the cube root of x then a better approximation is 
; given by the value

  ; (/ (+ (/ x (* y y)) 2y) 3)

; Use this formula to implement a cube-root procedure analogous to the 
; square-root procedure. (In 1.3.4 we will see how to implement Newton’s method 
; in general as an abstraction of these square-root and cube-root procedures.)


; Cube Roots By Newton's Method

; Y = guess for the cube root of X
; where (/ (+ (/ x (* y y)) 2y) 3)

(define (cube x)
  (* x x x))

(define (cube-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

; where

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) (* x 0.000000001)))

(define (cuberoot x)
  (cube-iter 1.0 x))
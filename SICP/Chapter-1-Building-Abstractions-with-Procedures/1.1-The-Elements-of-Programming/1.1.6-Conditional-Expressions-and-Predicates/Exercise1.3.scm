; Exercise 1.3: Define a procedure that takes three numbers as arguments 
; and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (largest x y z)
(cond 
  ((and (> x y) (> x z)) x)  ; x is the largest
  ((and (> y x) (> y z)) y)  ; y is the largest
  (else z)))                 ; z is the largest

(define (middle x y z)
(cond 
  ((and (> y x) (> x z)) x)  ; x is the middle, y is largest
  ((and (> z x) (> y z)) x)  ; x is the middle, z is largest
  ((and (> x y) (> y z)) y)  ; y is the middle, x is largest
  ((and (> z y) (> y x)) y)  ; y is the middle, z is largest
  (else z)))                 ; z is the middle

(define (top-two x y z) (sum-of-squares (largest x y z)(middle x y z)))
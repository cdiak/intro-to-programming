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

; (top-two 5 1 4)
; (sum-of-squares (largest x y z) (middle x y z))
; (sum-of-squares ((cond 
;                   ((and (> x y) (> x z)) x)  ; x is the largest
;                   ((and (> y x) (> y z)) y)  ; y is the largest
;                   (else z)))                 ; z is the largest
;                 (middle x y z))
; (sum-of-squares ((cond 
;                   ((and (> x y) (> x z)) x)  ; x is the largest
;                   ((and (> y x) (> y z)) y)  ; y is the largest
;                   (else z)))                 ; z is the largest
;                 (cond 
;                   ((and (> y x) (> x z)) x)  ; x is the middle, y is largest
;                   ((and (> z x) (> y z)) x)  ; x is the middle, z is largest
;                   ((and (> x y) (> y z)) y)  ; y is the middle, x is largest
;                   ((and (> z y) (> y x)) y)  ; y is the middle, z is largest
;                   (else z)))                 ; z is the middle)
; (sum-of-squares ((cond 
;                   ((and (> 5 1) (> 5 4)) 5)  ; x is the largest
;                   ((and (> y x) (> y z)) y)  ; y is the largest
;                   (else z)))                 ; z is the largest
;                 (cond 
;                   ((and (> y x) (> x z)) x)  ; x is the middle, y is largest
;                   ((and (> z x) (> y z)) x)  ; x is the middle, z is largest
;                   ((and (> x y) (> y z)) y)  ; y is the middle, x is largest
;                   ((and (> z y) (> y x)) y)  ; y is the middle, z is largest
;                   (else z)))                 ; z is the middle)
; (sum-of-squares (5)
;                 (cond 
;                   ((and (> 1 5) (> 5 4)) x)  ; x is the middle, y is largest
;                   ((and (> z x) (> y z)) x)  ; x is the middle, z is largest
;                   ((and (> x y) (> y z)) y)  ; y is the middle, x is largest
;                   ((and (> z y) (> y x)) y)  ; y is the middle, z is largest
;                   (else z)))                 ; z is the middle)
; (sum-of-squares (5)
;                 (cond 
;                   ((and (> 1 5) (> 5 4)) x)  ; x is the middle, y is largest
;                   ((and (> 4 5) (> 1 4)) x)  ; x is the middle, z is largest
;                   ((and (> x y) (> y z)) y)  ; y is the middle, x is largest
;                   ((and (> z y) (> y x)) y)  ; y is the middle, z is largest
;                   (else z)))                 ; z is the middle)
; (sum-of-squares (5)
;                 (cond 
;                   ((and (> 1 5) (> 5 4)) x)  ; x is the middle, y is largest
;                   ((and (> 4 5) (> 1 4)) x)  ; x is the middle, z is largest
;                   ((and (> 5 1) (> 1 4)) y)  ; y is the middle, x is largest
;                   ((and (> z y) (> y x)) y)  ; y is the middle, z is largest
;                   (else z)))                 ; z is the middle)
; (sum-of-squares (5)
;                 (cond 
;                   ((and (> 1 5) (> 5 4)) x)  ; x is the middle, y is largest
;                   ((and (> 4 5) (> 1 4)) x)  ; x is the middle, z is largest
;                   ((and (> 5 1) (> 1 4)) y)  ; y is the middle, x is largest
;                   ((and (> 4 1) (> 1 5)) y)  ; y is the middle, z is largest
;                   (else z)))                 ; z is the middle)
; (sum-of-squares (5)
;                 (cond 
;                   ((and (> 1 5) (> 5 4)) x)  ; x is the middle, y is largest
;                   ((and (> 4 5) (> 1 4)) x)  ; x is the middle, z is largest
;                   ((and (> 5 1) (> 1 4)) y)  ; y is the middle, x is largest
;                   ((and (> 4 1) (> 1 5)) y)  ; y is the middle, z is largest
;                   (else 4)))                 ; z is the middle)
; (sum-of-squares (5 4))
; (+ (square 5) (square 4))
; (+ (25 16)
; 41
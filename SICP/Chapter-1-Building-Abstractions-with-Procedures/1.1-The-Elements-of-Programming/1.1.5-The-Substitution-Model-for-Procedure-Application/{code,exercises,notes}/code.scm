> (define (square x) (* x x))
> square 10
#<procedure square>
> (square 10)
100
> (define (sum-of-squares x y)
    (+ (square x)(square y)))
> (sum-of-squares 10 15)
325
> (define (f a)
    (sum-of-squares (+ a 1) (* a )))
> (f 5)
61
> (define (f a)
    (sum-of-squares (+ a 1) (* a 2)))
> (f 5)
136
> (sum-of-squares (+ 5 1)(* 5 2))
136
> (+ (square (+ 5 1))
     (square (* 5 2)))
136
> (+ (* (+ 5 1) (+ 5 1))
     (* (* 5 2) (* 5 2)))
136

;; some exercises

(define (double x) (* 2 x))
;;doubles a number, x

(define (cube x) (* x x x))
;; cubes a number

(define (is-even x) (remainder (+ 1 x) 2))
;; returns 0 if false, 1 if true
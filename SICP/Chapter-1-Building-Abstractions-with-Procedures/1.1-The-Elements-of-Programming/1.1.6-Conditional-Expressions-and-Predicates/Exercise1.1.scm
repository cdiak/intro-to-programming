; Below is a sequence of expressions. What is the result printed by the interpreter
; in response to each expression? Assume that the sequence is to be evaluated in
; the order in which it is presented.

10
; this produces the value 10 because every expression has a value in scheme

(+ 5 3 4)
; 12

(- 9 1)
; 8

(/ 6 2)
; 3

(+ (* 2 4) (- 4 6))
;6

(define a 3)
; chezscheme implements this in a way where there is no value, doesn't evaluate to a value
; This is bullshit.

(define b (+ a 1))
; 4

(+ a b (* a b))
; (+ 3 b (* a b))
; (+ 3 4 (* a b))
; (+ 3 4 (* 3 b))
; (+ 3 4 (* 3 4))
; (+ 3 4 12)
; 19

(= a b)
; #f 

(if (and (> b a) (< b (* a b)))
  b
  a)

; (if (and #t (< b (* a b))) b a)
; (if (and #t (< 4 (* a b))) b a)
; (if (and #t (< 4 (* 3 4))) b a)
; (if (and #t (< 4 12))) b a)
; (if (and #t #t) b a)
; (if (and #t #t) b a)
; (if #t b a)
; b
; 4


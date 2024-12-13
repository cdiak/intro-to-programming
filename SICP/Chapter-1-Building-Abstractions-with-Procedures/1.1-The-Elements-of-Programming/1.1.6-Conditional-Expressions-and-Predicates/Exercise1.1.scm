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

> (cond ((= a 4) 6)
        ((= b 4) (+ 6 7 a))
        (else 25))

;  (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25))
;  (cond (#f 6) ((= b 4) (+ 6 7 a)) (else 25))
;  (cond (#f 6) ((= 4 4) (+ 6 7 a)) (else 25))
;  (cond (#f 6) (#t (+ 6 7 a)) (else 25))
;  (cond (#f 6) (#t (+ 6 7 3)) (else 25))
;  (cond (#f 6) (#t 16) (else 25))
;16

> (+ 2 (if (> b a) b a))
6
; (+ 2 (if (> 4 3) b a))
; (+ 2 (if #t b a))
; (+ 2 (if #t 4 a))
; (+ 2 4)
6

> (* (cond ((> a b) a)
           ((< a b) b)
           (else -1))
     (+ a 1))
16

(* (cond ((> a b) a) ((< a b) b) (else -1))(+ a 1))
; (* (cond ((> a b) a) ((< a b) b) (else -1))(+ a 1))
; (* (cond ((> 3 4) a) ((< a b) b) (else -1))(+ a 1))
; (* (cond (#f a) ((< a b) b) (else -1))(+ a 1))
; (* (cond (#f 3) ((< a b) b) (else -1))(+ a 1))
; (* (cond (#f 3) ((< 3 4) b) (else -1))(+ a 1))
; (* (cond (#f 3) (#t b) (else -1))(+ a 1))
; (* (cond (#f 3) (#t 4) (else -1))(+ a 1))
; (* 4 (+ a 1))
; (* 4 (+ 3 1))
; (* 4 4)
16
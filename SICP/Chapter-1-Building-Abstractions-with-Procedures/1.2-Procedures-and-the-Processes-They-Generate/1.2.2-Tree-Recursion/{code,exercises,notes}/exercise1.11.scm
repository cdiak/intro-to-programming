; Exercise 1.11: A function f
;  is defined by the rule that f(n)=n
;  if n<3
;  and f(n)=f(n−1)+2f(n−2)+3f(n−3)
;  if n≥3
;  Write a procedure that computes f by means of a recursive process. 
; Write a procedure that computes f by means of an iterative process.

;; first attempt, throws Exception: attempt to apply non-procedure 0 error at (newfunction 3)
;; That was a syntax error
(define (newfunction n)
  (cond ((< n 3) n)
        ((= n 3) (helperfunction n))
        ((> n 3) (helperfunction n))))

(define (helperfunction n)
  (+ (newfunction (- n 1)) (* 2 (newfunction (- n 2))) (* 3 (newfunction (- n 3)))))

;; second attempt with if syntax, more economical

(define (newfunction n)
  (if (< n 3)
      n
      (helperfunction n)))

(define (helperfunction n)
  (+ (newfunction (- n 1)) (* 2 (newfunction (- n 2))) (* 3 (newfunction (- n 3)))))
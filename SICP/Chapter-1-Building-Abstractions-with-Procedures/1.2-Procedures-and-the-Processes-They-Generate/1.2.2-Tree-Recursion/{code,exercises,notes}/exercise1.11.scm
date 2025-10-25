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

;; More elegant version that GPT-4o suggested:

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


;; Recursive version:

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


((f 3)
(+ (* 1 2)(* 2 1)(* 3 0)))

;; Iterative version:
;;
;; What are the state variables we need?
;; It could be the three versions of the function:
;;   a = (* 1 (f (- n 1)))
;;   b = (* 2 (f (- n 2)))
;;   c = (* 3 (f (- n 3)))
;; f = (+ a b c)
;;
;; So how do we write it as an f-iter?

(define (f n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (< count 1)
      c
      (f-iter (+ a 
                 (* 2 b) 
                 (* 3 c)) 
              a 
              b 
              (- count 1))))

;; Works for all test cases.
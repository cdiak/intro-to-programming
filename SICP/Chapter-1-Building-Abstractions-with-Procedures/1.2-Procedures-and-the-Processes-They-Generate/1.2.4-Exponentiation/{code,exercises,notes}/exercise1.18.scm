;; Exercise 1.18:
;; Using the results of Exercise 1.16 and Exercise 1.17, devise a procedure
;; that generates an iterative process for multiplying two integers in terms
;; of adding, doubling, and halving and uses a logarithmic number of steps.
;;
;; - [[Exercise_1.16]]: Focuses on exponentiation by successive squaring,
;;   which is a method to compute powers efficiently using repeated squaring.
;;
;; - [[Exercise_1.17]]: Explores multiplication using recursive processes,
;;   emphasizing the use of addition and doubling to achieve multiplication.
;;
;; The goal is to combine these approaches to create an efficient iterative
;; multiplication procedure that minimizes the number of operations required.

(define (peasant x y)
  (iter-times x y 0))

(define (iter-times x y a)
  (cond ((= y 0)
         a)
        ((even? y)
         (iter-times (double x) (halve y) a))
        (else
         (iter-times x (- y 1) (+ x a)))))

(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (+ x x))
  
(define (halve x)
  (/ x 2))


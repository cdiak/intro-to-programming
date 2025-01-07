Exercise 1.13

Prove that Fib(n) is the closest integer to phi^n / sqrt(5), where:
phi = (1 + sqrt(5)) / 2
Hint: Let: psi = (1 - sqrt(5)) / 2
Use induction and the definition of the Fibonacci numbers to prove that:
Fib(n) = (phi^n - psi^n) / sqrt(5)

----

; First we model the Fibonacci Sequence using the explicit formula.

(define (fib-explicit n)
  (define phi (/ (+ 1 (sqrt 5)) 2))
  (define psi (/ (- 1 (sqrt 5)) 2))
  (/ (- (expt phi n) (expt psi n)) (sqrt 5)))

; Then we define a method that divides the explicit formula by the recursive
; definition. This should always return 1.0000000000000002 (given the tolerance of sqrt)

(define (fib-proof n)
  (/ (fib-explicit n) (fib n)))

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

; To prove that this works inductively, we need to assume that the formula
; expressed by fib-explicit holds for n = k and n = k-1. More on that soon!

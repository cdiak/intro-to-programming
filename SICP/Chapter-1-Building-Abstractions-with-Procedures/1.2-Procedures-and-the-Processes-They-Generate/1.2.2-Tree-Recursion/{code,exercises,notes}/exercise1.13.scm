Exercise 1.13

Prove that Fib(n) is the closest integer to phi^n / sqrt(5), where:
phi = (1 + sqrt(5)) / 2
Hint: Let: psi = (1 - sqrt(5)) / 2
Use induction and the definition of the Fibonacci numbers to prove that:
Fib(n) = (phi^n - psi^n) / sqrt(5)


;; Let's start with the Fundamental Diagram:
;; Fib(0) = 0
;; Fib(1) = 1
;; Fib(2) = 1
;; Fib(3) = 2
;; Fib(4) = 3
;; Fib(5) = 5
;;
;; To prove that Fib(n) is the closest integer to phi^n/sqrt(5)
;; Would mean that Fib(3) = 2 is the closest integer to phi^2/sqrt(5)

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

; (fib-proof) demosntrates empirically that for any n, the ratio of the explicit to 
; recursive definitions of the Fibonacci sequence is ~1, but how can I prove it?

;; Prove that:
;;   For all integers n ≥ 0,
;;     F(n) = (φ^n − ψ^n) / √5
;;   where
;;     φ = (1 + √5) / 2
;;     ψ = (1 − √5) / 2
;;   And show that, consequently, F(n) is the closest integer to φ^n / √5.
;;
;; Define the Fibonacci sequence recursively:
;;   F(0) = 0
;;   F(1) = 1
;;   F(n+1) = F(n) + F(n−1)
;;
;; Define the explicit sequence:
;;   G(n) = (φ^n − ψ^n) / √5
;;
;; Step 1 — Base Cases
;; 
;; Compute directly:
;;   G(0) = (φ^0 − ψ^0)/√5 = (1 − 1)/√5 = 0 = F(0)
;;   G(1) = (φ − ψ)/√5 = ((1+√5)/2 − (1−√5)/2)/√5 = √5/√5 = 1 = F(1)
;;
;; Therefore, the base cases hold.
;;
;; Step 2 — Algebraic Recurrence Relations for φ and ψ
;;
;; From the definitions:
;;   φ = (1 + √5)/2,   ψ = (1 − √5)/2
;;
;; Algebra shows that both satisfy:
;;   x² = x + 1
;;
;; Multiply both sides by x^(n−1):
;;   x^(n+1) = x^n + x^(n−1)
;;
;; Hence, for all n ≥ 1:
;;   φ^(n+1) = φ^n + φ^(n−1)
;;   ψ^(n+1) = ψ^n + ψ^(n−1)
;;
;; Step 3 — Inductive Hypothesis
;;
;; Assume for some k ≥ 1 that:
;;   G(k) = F(k)
;;   G(k−1) = F(k−1)
;;
;; We must show:
;;   G(k+1) = F(k+1)
;;
;; Step 4 — Inductive Step
;;
;; Begin with the definition:
;;   G(k+1) = (φ^(k+1) − ψ^(k+1)) / √5
;;
;; Substitute the recurrence relations for φ and ψ:
;;   G(k+1) = ((φ^k + φ^(k−1)) − (ψ^k + ψ^(k−1))) / √5
;;
;; Simplify and separate terms:
;;   G(k+1) = [(φ^k − ψ^k) + (φ^(k−1) − ψ^(k−1))] / √5
;;           = (φ^k − ψ^k)/√5 + (φ^(k−1) − ψ^(k−1))/√5
;;           = G(k) + G(k−1)
;;
;; By the inductive hypothesis:
;;   G(k+1) = F(k) + F(k−1) = F(k+1)
;;
;; Therefore, by induction on n:
;;   F(n) = G(n) for all n ≥ 0.
;;
;; Q.E.D.
;;
;; For this problem I worked iteratively with ChatGPT to teach me
;; how to do induction, the mathematical properties of recurrence,
;; and to format the final proof.
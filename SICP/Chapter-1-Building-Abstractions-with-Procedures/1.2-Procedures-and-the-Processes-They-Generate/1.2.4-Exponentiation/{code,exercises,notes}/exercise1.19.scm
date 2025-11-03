;; Exercise 1.19: Fibonacci numbers using a logarithmic number of steps.
;; This exercise involves transforming the state variables in the `fib-iter` process.
;; The transformation T is applied n times, starting with (1, 0), to produce Fib(n+1) and Fib(n).
;; We generalize T to Tpq, which transforms (a, b) as follows:
;;   a ← bq + aq + ap
;;   b ← bp + aq
;;
;; The task is to show that applying Tpq twice results in a transformation Tp'q' of the same form,
;; and compute p' and q' in terms of p and q. This allows us to square these transformations,
;; enabling computation of Tn using successive squaring.

(define (fib n)
  ;; Computes the nth Fibonacci number using transformation-based iteration.
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0)
         b)
        ((even? count)
         ;; Square the transformation:
         (fib-iter a
                   b
                   (+ (* p p) (* q q))      ; p' = p^2 + q^2
                   (+ (* 2 p q) (* q q))    ; q' = 2pq + q^2
                   (/ count 2)))
        (else
         ;; Apply transformation once:
         (fib-iter (+ (* b q)
                      (* a q)
                      (* a p))
                   (+ (* b p)
                      (* a q))
                   p
                   q
                   (- count 1)))))

;; ## Algebraic Derivation Transcript

;; Apply the transformation T_pq once:
;;   a1 = b*q + a*q + a*p
;;   b1 = b*p + a*q
;;
;; Apply it a second time to (a1, b1):
;;   a2 = b1*q + a1*q + a1*p
;;   b2 = b1*p + a1*q
;;
;; Substitute for a1 and b1:
;;   a2 = (b*p + a*q)*q + (b*q + a*q + a*p)*q + (b*q + a*q + a*p)*p
;;   b2 = (b*p + a*q)*p + (b*q + a*q + a*p)*q
;;
;; Expand and collect terms:
;;   a2 = a*(p*p + 2*p*q + 2*q*q) + b*(p*q + q*q)
;;   b2 = a*(p*q + q*q)           + b*(p*p + q*q)
;;
;; By comparison with the transformation form:
;;   a2 = a*p' + b*q'
;;   b2 = a*q' + b*p
;;
;; We can read off:
;;   p' = p² + q²
;;   q' = 2*p*q + q²
;;
;; Using this method, computing Fib(n) requires only O(log n) steps.
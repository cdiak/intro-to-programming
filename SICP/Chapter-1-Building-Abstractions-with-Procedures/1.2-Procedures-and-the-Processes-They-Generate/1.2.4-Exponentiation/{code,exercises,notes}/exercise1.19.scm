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

;; We apply the transformation \(T_{pq}\) twice, starting from:

;; $$
;; a_1 = bq + aq + ap \\
;; b_1 = bp + aq
;; $$

;; We then compute \(a_2\) and \(b_2\) as:

;; $$
;; a_2 = (bp + aq)q + (bq + aq + ap)q + (bq + aq + ap)p \\
;; b_2 = (bp + aq)p + (bq + aq + ap)q
;; $$

;; Expanding terms:

;; $$
;; a_2 = bpq + aqq + bqq + aqq + apq + bqp + a qp + app \\
;;     = aq^2 + aq^2 + bq^2 + bpq + bpq + apq+ap q+ap p^2\\
 ;;    = q^2(2a+b)+pq(  2a+  2b)+ap ^  2$$

 ;; $$b _{   }=bp ^{   }+aq q+b q+a q+a pq \\= q(a+b)+p( )+bp ^{   }
 
 ;; ## Derivation Summary
 
 ;; Starting from the recursive structure of \(T_{pq}\), we applied it symbolically twice, obtaining expressions for \(a_2\) and \(b_2\). By comparing these expressions to the standard transformation form, we isolated the coefficients of \(a\) and \(b\) to solve for \(p'\) and \(q'\).

 ;; ### Final Derived Formulas
 
 ;; $$
 ;; \begin{align*}
 ;; q' &= q^2+  pq\\
 ;; p' &= p^{}+  
```

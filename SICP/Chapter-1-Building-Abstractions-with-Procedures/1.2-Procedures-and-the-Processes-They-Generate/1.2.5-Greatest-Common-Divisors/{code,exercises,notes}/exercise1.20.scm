;; -----------------------------------------------------------------------------
;; Lamé’s Theorem and Euclid’s Algorithm
;; -----------------------------------------------------------------------------

;; The fact that the number of steps required by Euclid’s Algorithm has
;; logarithmic growth bears an interesting relation to the Fibonacci numbers:

;; Lamé’s Theorem:
;; If Euclid’s Algorithm requires k steps to compute the GCD of some pair,
;; then the smaller number in the pair must be greater than or equal to the
;; k-th Fibonacci number.

;; We can use this theorem to get an order-of-growth estimate for Euclid’s
;; Algorithm. Let n be the smaller of the two inputs to the procedure.
;; If the process takes k steps, then we must have:

;;     n ≥ Fib(k) ≈ φ^k / √5

;; Therefore the number of steps k grows as the logarithm (to the base φ) of n.
;; Hence, the order of growth is Θ(log n).


;; -----------------------------------------------------------------------------
;; Exercise 1.20
;; -----------------------------------------------------------------------------

;; The process that a procedure generates is of course dependent on the rules
;; used by the interpreter. As an example, consider the iterative gcd procedure
;; given above.

;; Suppose we were to interpret this procedure using normal-order evaluation,
;; as discussed in Section 1.1.5. (The normal-order-evaluation rule for `if`
;; is described in Exercise 1.5.)

;; Using the substitution method (for normal order), illustrate the process
;; generated in evaluating:

;;     (gcd 206 40)

;; and indicate the remainder operations that are actually performed.

;; How many remainder operations are actually performed in the normal-order
;; evaluation of (gcd 206 40)? In the applicative-order evaluation?

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))


;; -----------------------------------------------------------------------------
;; Normal Order Substitution
;; -----------------------------------------------------------------------------
;; - Substitute the arguments directly into the function body without evaluating them.
;; - Delay evaluation of arguments until (and unless) their values are actually needed.
;; - Can result in multiple evaluations of the same expression.
;;
;; Example:
;;   (f (+ 2 3)) 
;;   → expand f with (+ 2 3) still unevaluated
;;   → only evaluate (+ 2 3) when used inside f
;;
;; -----------------------------------------------------------------------------
;; Applicative Order Substitution
;; -----------------------------------------------------------------------------
;; - Evaluate all arguments before substituting them into the function body.
;; - Each argument is reduced to a value first.
;; - Each subexpression is evaluated exactly once (assuming no side effects).
;;
;; Example:
;;   (f (+ 2 3)) 
;;   → evaluate (+ 2 3) → 5
;;   → substitute 5 into f
;; -----------------------------------------------------------------------------


;; -----------------------------------------------------------------------------
;; Normal Order Substitution
;; -----------------------------------------------------------------------------


(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))


(gcd 206 40)
→ (gcd 40 (remainder 206 40))
→ (gcd (remainder 206 40)
→      (remainder 40 (remainder 206 40)))
→ (gcd (remainder 40 (remainder 206 40))
       (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40))))
→ (gcd (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40)))
       (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40)))))
→  (remainder (remainder 206 40)
              (remainder 40 (remainder 206 40)))

;; FIRST TRY, was wrong

(gcd 206 40)
→ (if (= b 0) a (gcd b (remainder a b)))
→ (if (= 40 0) 206 (gcd b (remainder a b)))
→ (if (= 40 0) 206 (gcd 40 (remainder a b)))
→ (if (= 40 0) 206 (gcd 40 (remainder 206 40)))
→ (if (= 40 0) 206 (gcd 40 (6)))   ;; evaluates (remainder 206 40)
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd b (remainder a b))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd 6 (remainder a b))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd 6 (remainder 40 6))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd 6 4)))   ;; evaluates (remainder 40 6)
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd b (remainder a b)))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd 4 (remainder a b)))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd 4 (remainder 6 4)))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd 4 2))))  ;; evaluates (remainder 6 4)
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd b (remainder a b))))))  
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd 2 (remainder a b))))))  
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd 2 (remainder 4 2))))))  
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd 2 0))))) ;; evaluates (remainder 4 2) 
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (if (= 0 0) 2 (gcd b (remainder a b)))))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (2))))) ;; if evalutes to 2
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (2)))) ;; if evalutes to 2
→ (if (= 40 0) 206 (if (= 6 0) 40 (2))) ;; if evalutes to 2
→ (if (= 40 0) 206 (2)) ;; if evalutes to 2
→ (if (= 40 0) 206 (2))
→ 2 ;; if evalutes to 2

;; Remainder is called 4 times, because it is never called during the final if statement.

;; -----------------------------------------------------------------------------
;; Applicative Order
;; -----------------------------------------------------------------------------

(gcd 206 40)
→ (if (= b 0) a (gcd b (remainder a b)))
→ (if (= 40 0) 206 (gcd b (remainder a b)))
→ (if (= 40 0) 206 (gcd b (remainder 206 40)))
→ (if (= 40 0) 206 (gcd b (6)))   ;; evaluates (remainder 206 40)
→ (if (= 40 0) 206 (gcd 40 (6)))   
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd b (remainder a b))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd b (remainder 40 6))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd b 4)))   ;; evaluates (remainder 40 6)
→ (if (= 40 0) 206 (if (= 6 0) 40 (gcd 6 4)))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd b (remainder a b)))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd b (remainder 6 4)))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd b 2))))  ;; evaluates (remainder 6 4)
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (gcd 4 2))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd b (remainder a b))))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd b (remainder 4 2))))))  
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd b 0))))) ;; evaluates (remainder 4 2)  
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (gcd 2 0)))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (if (= 0 0) 2 (gcd b (remainder a b)))))))
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (if (= 2 0) 4 (2))))) ;; if evalutes to 2
→ (if (= 40 0) 206 (if (= 6 0) 40 (if (= 4 0) 6 (2)))) ;; if evalutes to 2
→ (if (= 40 0) 206 (if (= 6 0) 40 (2))) ;; if evalutes to 2
→ (if (= 40 0) 206 (2)) ;; if evalutes to 2
→ (if (= 40 0) 206 (2))
→ 2 ;; if evalutes to 2

;; Remainder is likewise called 4 times, because it is never called during the final if statement.
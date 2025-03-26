;; Exercise 1.16: Design a procedure that evolves an iterative exponentiation process 
;; using successive squaring and a logarithmic number of steps, similar to `fast-expt`.
;; Hint: Using the observation that (b^n/2)^2 = (b^2)^(n/2), maintain an additional state 
;; variable `a` along with the exponent `n` and the base `b`. Define the state transformation 
;; such that the product a * b^n remains unchanged from state to state. Initially, `a` is 1, 
;; and the answer is given by the value of `a` at the end of the process. This technique of 
;; defining an invariant quantity that remains unchanged from state to state is powerful in 
;; designing iterative algorithms.

(define (expt b n)
  (iter-expt b n 1))

(define (iter-expt b n a)
  (cond ((= n 0)
         a)
        ((even? n)
         (iter-expt (square b) (/ n 2) a))
        (else
         (iter-expt b (- n 1) (* b a)))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))


;; To create a trace table for the iterative exponentiation process, we will track the values of \( b \), \( n \), and \( a \) through each step of the computation. This will illustrate how the algorithm uses successive squaring and maintains an invariant quantity.

;; ### Trace Table for \( $2^7$ \)

;; | Step | \( b \) | \( n \) | \( a \) | Operation                            |
;; | ---- | ------- | ------- | ------- | ------------------------------------ |
;; | 1    | 2       | 7       | 1       | Initial call                         |
;; | 2    | 2       | 6       | 2       | Multiply: \( a = a \times b \)       |
;; | 3    | 4       | 3       | 2       | Square: \( b = b^2 \), halve \( n \) |
;; | 4    | 4       | 2       | 8       | Multiply: \( a = a \times b \)       |
;; | 5    | 16      | 1       | 8       | Square: \( b = b^2 \), halve \( n \) |
;; | 6    | 16      | 0       | 128     | Multiply: \( a = a \times b \); done |

;; ### Trace Table for \( $2^8$ \)

;; | Step | \( b \) | \( n \) | \( a \) | Operation                            |
;; | ---- | ------- | ------- | ------- | ------------------------------------ |
;; | 1    | 2       | 8       | 1       | Initial call                         |
;; | 2    | 4       | 4       | 1       | Square: \( b = b^2 \), halve \( n \) |
;; | 3    | 16      | 2       | 1       | Square: \( b = b^2 \), halve \( n \) |
;; | 4    | 256     | 1       | 1       | Square: \( b = b^2 \), halve \( n \) |
;; | 5    | 256     | 0       | 256     | Multiply: \( a = a \times b \); done |

;; - In both cases, observe how the algorithm efficiently reduces the problem size by halving the exponent through successive squaring.
;; - The invariant quantity maintained is that at each step, the product of `a` and `b^n` equals the original base raised to its original power.
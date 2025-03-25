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
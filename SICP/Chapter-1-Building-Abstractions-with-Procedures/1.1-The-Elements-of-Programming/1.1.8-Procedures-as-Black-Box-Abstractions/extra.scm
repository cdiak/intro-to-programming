(define (number-sign x)
  (cond
    ((> x 0) "positive")
    ((< x 0) "negative")
    (else "zero")))

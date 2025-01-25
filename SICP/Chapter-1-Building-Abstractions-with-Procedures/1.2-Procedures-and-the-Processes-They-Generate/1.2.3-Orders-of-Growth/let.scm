(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
        ((or (< amount 0) 
             (= kinds-of-coins 0)) 
         0)
        (else 
         (+ (cc amount (- kinds-of-coins 1))
            (cc (- amount (first-denomination kinds-of-coins))
                kinds-of-coins)))))

(define (decorate-count f)
  (let ((times-called 0)) 
    (lambda args
      (begin
        (display "Times called: ")
        (display times-called)
        (newline)
        (set! times-called (+ times-called 1))
        (apply f args)))))

(define decorated-cc (decorate-count cc))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))
 ; Exercise 1.7: The good-enough? test used in computing square roots will 
 ; not be very effective for finding the square roots of very small numbers. 
 ; Also, in real computers, arithmetic operations are almost always performed 
 ; with limited precision. This makes our test inadequate for very large numbers. 
 
 ; Explain these statements, with examples showing how the test fails for small 
 ; and large numbers. 

      ; good-enough? is a procedure that takes two arguments, `guess` and `x` and returns a boolean
      ; value `#t` or `#f` based on whether the difference of the absolute value of the square of
      ; guess and x is less than 0.001. 

      ; This means that all values of guess where square(guess) < 0.001, good-enough? will return #t. 
      ; Therefore, when trying to find the square root of any number whose square is < 0.001, good-enough?
      ; returns #t 

; (good enough? 0.02 0.001)
; (< (abs (- (square 0.02)))) 
 
 
 ; An alternative strategy for implementing good-enough? is 
 ; to watch how guess changes from one iteration to the next and to stop when 
 ; the change is a very small fraction of the guess. Design a square-root procedure 
 ; that uses this kind of end test. Does this work better for small and large numbers?

; current, previous and x


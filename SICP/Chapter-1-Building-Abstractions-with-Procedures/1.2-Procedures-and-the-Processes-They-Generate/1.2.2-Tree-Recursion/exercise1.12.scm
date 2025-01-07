; Exercise 1.12: The following pattern of numbers is called Pascal’s triangle.

         1
       1   1
     1   2   1
   1   3   3   1
 1   4   6   4   1
       . . .

; The numbers at the edge of the triangle are all 1, and each number inside 
; the triangle is the sum of the two numbers above it. Write a procedure 
; that computes elements of Pascal’s triangle by means of a recursive process.

; first attempt calculates total but not elements

(define (pascal n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (pascal (- n 1)) (pascal (- n 1))))))

; Second attempt can be in terms of the three corners
; I want as input a number n that gives you the number of rows down,
; and then as output I want it to generate the sequence of elements.
; We can think of indexing the numbers as so:
; n = 1 1 1 1 2 1 1 3 3 1 1  4  6  4  1
; i = 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 
; ... will think about this more tomorrow.
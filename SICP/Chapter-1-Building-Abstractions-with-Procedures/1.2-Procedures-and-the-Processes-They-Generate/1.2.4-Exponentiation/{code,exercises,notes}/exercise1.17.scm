```scheme
;; Exercise 1.17:
;; The exponentiation algorithms in this section are based on performing 
;; exponentiation by means of repeated multiplication. In a similar way, 
;; one can perform integer multiplication by means of repeated addition.
;;
;; The following multiplication procedure (in which it is assumed that our 
;; language can only add, not multiply) is analogous to the `expt` procedure:

(define (* a b)
   (if (= b 0)
       0
       (+ a (* a (- b 1)))))

;; This algorithm takes a number of steps that is linear in `b`. Now suppose 
;; we include, together with addition, operations `double`, which doubles an 
;; integer, and `halve`, which divides an (even) integer by 2. Using these, 
;; design a multiplication procedure analogous to `fast-expt` that uses a 
;; logarithmic number of steps.
```
```scheme
(define (times a b)
  (cond ((= b 0) 
         0)
        ((even? b) 
         (times (double a) (halve b)))
        (else 
         (+ a (times a (- b 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (+ x x))
  
(define (halve x)
  (/ x 2))
```

# Multiplication Procedure: Logarithmic Steps (Exercise 1.17)

## Implementation

```scheme
(define (times a b)
  (cond ((= b 0)
         0)
        ((even? b)
         (times (double a) (halve b)))
        (else
         (+ a (times a (- b 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (+ x x))
  
(define (halve x)
  (/ x 2))
```

---

## Trace Tables

### Example 1: `(times 7 8)`

| Call               | Condition  | Result / Recursive Step |
|--------------------|------------|-------------------------|
| `(times 7 8)`      | even (8)   | `(times 14 4)`          |
| `(times 14 4)`     | even (4)   | `(times 28 2)`          |
| `(times 28 2)`     | even (2)   | `(times 56 1)`          |
| `(times 56 1)`     | odd (1)    | `56 + (times 56 0)`     |
| `(times 56 0)`     | base (0)   | `0`                     |
| **Result**         |            | **56**                  |

### Example 2: `(times 5 5)`

| Call              | Condition  | Result / Recursive Step |
|-------------------|------------|-------------------------|
| `(times 5 5)`     | odd (5)    | `5 + (times 5 4)`       |
| `(times 5 4)`     | even (4)   | `(times 10 2)`          |
| `(times 10 2)`    | even (2)   | `(times 20 1)`          |
| `(times 20 1)`    | odd (1)    | `20 + (times 20 0)`     |
| `(times 20 0)`    | base (0)   | `0`                     |
| **Result**        |            | **25**                  |

---

## Work and Mistakes

### Initial Missteps
- Initially, I mistakenly introduced addition into the even condition.
- Example incorrect code snippet:
  ```scheme
  ((even? b)
    (+ (times (double a) (halve b))))
  ```
- Realized I was incorrectly using a single-argument `+`, causing logical confusion.

### Correction and Insight
- Removed unnecessary addition operation from the even case.
- Clarified the recursion analogy with the original `fast-expt` function:
  - `fast-expt` even case: `(square (fast-expt b (/ n 2)))`
  - Corrected `times` even case: `(times (double a) (halve b))`
- Recognized that recursion should directly handle doubling and halving without extra arithmetic.

### Refined Logic
- Clearly distinguished the handling of even and odd conditions:
  - **Even case:** doubles `a`, halves `b`, recursive call.
  - **Odd case:** reduces problem size by subtracting one from `b`, then adds `a`.

---

## Key Takeaways
- **Recursive algorithms** often mirror structures: clarity in base, even, and odd cases is essential.
- **Step-by-step tracing** is critical for verifying logical correctness and identifying errors.
- **Simplicity and direct analogy** with a known working example (like `fast-expt`) helps avoid unnecessary complexity.
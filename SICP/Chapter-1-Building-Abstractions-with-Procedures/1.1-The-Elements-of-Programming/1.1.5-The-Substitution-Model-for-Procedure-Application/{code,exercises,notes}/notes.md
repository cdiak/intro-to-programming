Learn your lines:

To apply a compound procedure to arguments,
evaluate the body of the procedure with each formal
parameter replaced by the corresponding argument.

This is a substitution MODEL for the behavior of the interpreter.
It is NOT how the interpreter implements the behavior.

Applicative v. Normal Order Evaluation
- Normal order: fully expand the combinations, then reduce.
- Applicative order: avoids multiple evaluations of the same expression

Lisp Program
├── Expression
│   ├── Primitive Expression
│   ├── Combination
│   │   ├── Operator
│   │   └── Operands
│   └── Special Form
│       ├── define
│       ├── lambda
│       ├── if
│       ├── cond
│       └── quote
├── Process (created by evaluating expressions)
└── Procedure (like a function)
    ├── Primitive Procedures (built-in, like +, -, car, cdr)
    └── Compound Procedures (user-defined, using lambda or define)


Here's a step-by-step **trace of** `(f 5)` in both **normal-order** and **applicative-order evaluation**, presented in a `|:-:|` format for clarity.

---

### **Definitions**
We are given:
```scheme
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (f a) (sum-of-squares (+ a 1) (* a 2)))
```

---

### **Applicative-Order Evaluation**  
(Evaluate arguments before applying the procedure)

| **Step**                  | **Expression**                                   | **Result** |
|---------------------------|-------------------------------------------------|------------|
| **Start**                 | `(f 5)`                                         | -          |
| **Substitute `f` body**   | `(sum-of-squares (+ 5 1) (* 5 2))`               | -          |
| **Evaluate `(+ 5 1)`**    | `(sum-of-squares 6 (* 5 2))`                     | `6`        |
| **Evaluate `(* 5 2)`**    | `(sum-of-squares 6 10)`                          | `10`       |
| **Substitute `sum-of-squares` body** | `(+ (square 6) (square 10))`                 | -          |
| **Evaluate `(square 6)`** | `(+ (* 6 6) (square 10))`                        | `36`       |
| **Evaluate `(square 10)`**| `(+ 36 (* 10 10))`                               | `100`      |
| **Evaluate final sum**    | `136`                                           | `136`      |

---

### **Normal-Order Evaluation**  
(Expand fully before reducing expressions)

| **Step**                  | **Expression**                                   | **Result** |
|---------------------------|-------------------------------------------------|------------|
| **Start**                 | `(f 5)`                                         | -          |
| **Substitute `f` body**   | `(sum-of-squares (+ 5 1) (* 5 2))`               | -          |
| **Substitute `sum-of-squares` body** | `(+ (square (+ 5 1)) (square (* 5 2)))`        | -          |
| **Substitute `square` body for `(+ 5 1)`** | `(+ (* (+ 5 1) (+ 5 1)) (square (* 5 2)))` | -          |
| **Substitute `square` body for `(* 5 2)`** | `(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))` | -          |
| **Evaluate `(+ 5 1)`**    | `(+ (* 6 6) (* (* 5 2) (* 5 2)))`                | `6`        |
| **Evaluate `(* 5 2)`**    | `(+ (* 6 6) (* 10 10))`                          | `10`       |
| **Evaluate `(square 6)`** | `(+ 36 100)`                                    | `36`       |
| **Evaluate `(square 10)`**| `136`                                           | `100`      |

---

### **Comparison**
| **Aspect**                  | **Applicative-Order**                           | **Normal-Order**                                |
|-----------------------------|------------------------------------------------|------------------------------------------------|
| **Key Idea**                | Evaluate arguments first, then apply procedure | Expand fully, then evaluate reduced arguments  |
| **Efficiency**              | Avoids redundant computation (`+ 5 1` and `* 5 2` are evaluated once). | May evaluate subexpressions multiple times.    |
| **Result**                  | `136`                                          | `136`                                          |


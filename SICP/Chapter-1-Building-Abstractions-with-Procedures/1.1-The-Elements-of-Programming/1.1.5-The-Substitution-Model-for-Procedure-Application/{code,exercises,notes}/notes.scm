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
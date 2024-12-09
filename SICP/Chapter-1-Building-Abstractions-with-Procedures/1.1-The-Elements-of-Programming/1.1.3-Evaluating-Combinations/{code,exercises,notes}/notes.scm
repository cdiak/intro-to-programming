       [ Expression ]
            ↓
        [ EVAL ]
            ↓
        What is it?
        ├── Primitive? → Return value directly
        ├── Variable? → Look it up in the environment
        └── Combination? → 
               ├── Evaluate the operator (call EVAL)
               └── Evaluate the operands (call EVAL)
                      ↓
                   [ APPLY ]
                      ↓
        Is it a procedure?
        ├── Primitive procedure? → Directly apply it (like +, *, car, etc.)
        └── Compound procedure? → 
               ├── Create new environment (bind arguments to parameters)
               └── Call EVAL on the procedure body in the new environment
                      ↓
        Return the result

---

Some thoughts on Lambda Calculus too:

Lambda Calculus
├── Variables (x, y, z, etc.)
├── Lambda Abstraction (function definition)
│     └── λx . x + 1  (a function taking x and returning x + 1)
└── Function Application (calling a function)
      └── (λx . x + 1) 3 → 3 + 1 → 4
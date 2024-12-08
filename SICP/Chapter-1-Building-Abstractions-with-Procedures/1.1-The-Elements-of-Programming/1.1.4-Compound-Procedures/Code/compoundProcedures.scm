(define (square x) (* x x ))

# This is a compound procedure. The general form of such is:

(define (⟨name⟩ ⟨formal parameters⟩) ⟨body⟩)

# Name is a symbol.
# Body is an expression that will yield the value of the procedure application
# when the formal parameters are replaced by the actual arguments.

(+ (square x) (square y))

(define (sum-of-squares x y)
  (+ (square x)(square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

# Compound procedures are used in exactly the same way as primitive procedures. 
# Indeed, one could not tell by looking at the definition of sum-of-squares 
# given above whether square was built into the interpreter, like + and *, 
# or defined as a compound procedure.
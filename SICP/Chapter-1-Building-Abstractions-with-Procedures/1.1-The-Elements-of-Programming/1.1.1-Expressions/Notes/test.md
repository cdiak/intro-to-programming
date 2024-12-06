A programming language is a framework within which we 
organize our ideas about computational processes.

There are three mechanisms for combining simple ideas 
into more complex ideas. Primitive expressions, which 
represent the simplest entities the language is 
concerned with. Means of combination, by which compound 
elements are built from simpler ones. And means of 
abstraction, by which compound elements can be named 
and manipulated as units.

Data is stuff. Procedures are descriptions of the 
rules for manipulating the stuff.

Any sufficiently powerful programming language will 
describe a primitive data and primitive procedures 
and have methods for combining and abstracting them.

Combinations are expressions formed by delimiting a 
list of expressions within parentheses to denote the procedure.

Combinations consist of lists composed of two types of elements:
operators and operands.

(+ 7 6) evaluates to 13

Lisp uses prefix notation, where the operator comes before 
the operands.

In pretty printing, the long combinations are written 
so that the operands are aligned vertically.

Lisp programmers know the value of everything 
but the cost of nothing. -- A. Perlis

A name identifies a variable whose value is the object.

(define size 2) associates the value 2 with the name size.

e.g.:
```lisp
size
2

(* 5 size)
10
```

Or consider more complex uses of define:

```Lisp
(define pi 3.14159)

(define radius 10)

(* pi (* radius radius))
314.159

(define circumference (* 2 pi radius))

circumference
62.8318
```

SIDEQUEST w GPT

The concept of an “environment” in programming has overlapping ideas across different contexts, but the specific usage differs depending on the domain. Let’s break this down to clarify how the term “environment” in Lisp and SICP compares to “environment” in tools like Conda.

Environment in Lisp and SICP

	1.	Definition:
	•	In Lisp and as described in SICP, the environment refers to the internal structure used by the interpreter to map symbols (names) to their corresponding values (objects). For instance, when you define x = 5, the interpreter records in its environment that x is associated with the value 5.
	2.	Global vs. Local Environments:
	•	The global environment holds mappings that are accessible throughout the entire program.
	•	Local environments are created dynamically during function calls, allowing for temporary, isolated mappings of symbols to values. These environments often “inherit” or extend the global environment.
	3.	Purpose:
	•	Environments enable the interpreter to resolve symbols during evaluation. For example, when evaluating an expression like (x + y), the interpreter looks up the values of x and y in the current environment.

Environment in Conda or Virtual Environments

	1.	Definition:
	•	In tools like Conda or Python’s venv, an environment refers to an isolated workspace that contains specific configurations of software dependencies. For instance, one Conda environment might have Python 3.8 with NumPy 1.20, while another might have Python 3.9 with NumPy 1.23.
	2.	Purpose:
	•	Isolate dependencies for different projects to prevent conflicts (e.g., two projects requiring incompatible versions of a library).
	•	Reproducibility: Each environment serves as a snapshot of specific tools and libraries, ensuring that a project runs identically across systems.
	3.	Scope:
	•	These environments are typically external to the interpreter itself. They affect the runtime behavior by controlling which libraries or tools are available, but they do not directly map symbols to values within the code.

Similarities

	1.	Association:
	•	Both types of environments involve associating names with objects:
	•	Lisp environments associate symbols (names) with values within the interpreter.
	•	Conda environments associate project names or software configurations with specific versions of libraries.
	2.	Encapsulation:
	•	Both provide encapsulation to keep associations isolated:
	•	Lisp environments manage scopes to avoid symbol clashes (e.g., local variables in a function don’t interfere with global variables).
	•	Conda environments isolate project dependencies to avoid version conflicts.

Differences

	1.	Domain:
	•	Lisp environments are runtime constructs used by the interpreter to manage program execution.
	•	Conda environments are development-time constructs used to manage the software and libraries needed to execute a program.
	2.	Granularity:
	•	Lisp environments work at the level of variables and functions within a program.
	•	Conda environments operate at the level of software packages and tools.
	3.	Implementation:
	•	A Lisp environment is an in-memory data structure (often a dictionary or hash table).
	•	A Conda environment is a directory structure on disk that contains binaries, libraries, and metadata.

Conclusion

The two uses of “environment” share a metaphorical similarity: both involve mapping names to entities in a way that supports encapsulation and modularity. However, they differ fundamentally in their scope and purpose. Lisp environments operate at the level of program execution, keeping track of variables and their bindings, while Conda environments operate at the level of software dependencies, managing the tools and libraries needed for a project.

Understanding both will help you appreciate how abstractions at different levels of computing are named and conceptualized similarly!

Left applicative order sidequest:

Left applicative order, also called strict evaluation or call-by-value, is a strategy for evaluating expressions commonly used in programming and theoretical computation. Here’s a concise breakdown:
	1.	Key Idea:
	•	Evaluate all arguments of a function before applying the function itself.
	2.	How It Works:
	•	First, evaluate the expressions for all arguments to their final values.
	•	Next, substitute those values into the function.
	•	Finally, execute the function using the substituted values.
	3.	Example:
Suppose you have a function f(x) = x + 1 and an expression f(2 * 3).
	•	In left applicative order, you first calculate 2 * 3, which equals 6.
	•	Then you substitute 6 into f(x), resulting in 6 + 1.
	•	The result is 7.
	4.	Characteristics:
	•	Arguments are evaluated only once, which can be efficient in most cases.
	•	The order of evaluation is strict and predictable, making it easier to debug and reason about the program.
	5.	Comparison with Other Evaluation Strategies:
	•	Normal Order (Lazy Evaluation): Delays evaluating arguments until their values are absolutely needed.
	•	Left Applicative Order: Always evaluates arguments immediately, even if some arguments are never used by the function.

Left applicative order is widely used in practical programming languages like Python, Java, and C because it simplifies implementation and works well in most contexts. However, it can sometimes perform unnecessary computations if some arguments are never actually used by the function.

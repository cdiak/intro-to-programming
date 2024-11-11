## Compiler

- A **Compiler** is a program that translates **source code** written in a high-level programming language into **machine code** or **bytecode** that can be executed by a computer’s hardware.
- The process of compilation typically involves multiple stages, including **lexical analysis**, **parsing**, **semantic analysis**, **optimization**, and **code generation**.

### Key Idea:
- A **Compiler** translates the entire program at once, unlike an [[Interpreter]], which translates code line by line.
- The result is a standalone executable file or bytecode that can run on a target machine without needing the compiler during execution.

### Compilation Phases:

1. **Lexical Analysis**:
   - The compiler reads the raw source code and breaks it down into smaller, meaningful units called **tokens**.
   - Tokens are typically keywords, identifiers, operators, and symbols.
   - **Example**: In the code `int x = 10;`, tokens would be `int`, `x`, `=`, `10`, and `;`.

2. **Syntax Analysis (Parsing)**:
   - The compiler checks if the tokens follow the grammatical structure of the programming language (i.e., its syntax rules).
   - If the code is syntactically correct, it generates an intermediate representation called an **Abstract Syntax Tree (AST)**.
   - **Example**: The statement `int x = 10;` would be broken down into a tree structure showing the variable declaration and assignment.

3. **Semantic Analysis**:
   - The compiler checks the **meaning** of the code to ensure it follows the rules of the language. This includes type checking, scope resolution, and function/method validation.
   - **Example**: Ensuring that `x` is an integer and that the value being assigned (`10`) is compatible with its type.

4. **Optimization**:
   - The compiler optimizes the code to improve performance, reduce memory usage, or eliminate redundant instructions.
   - Optimization can be done at various levels, such as removing unused variables or rearranging loops for better efficiency.

5. **Code Generation**:
   - The compiler translates the intermediate representation into **machine code** or **bytecode**.
   - Machine code is specific to the target system's architecture (e.g., x86, ARM), while bytecode (used by languages like [[Java]]) is platform-independent and runs on a virtual machine like the [[Java Virtual Machine]] (JVM).

6. **Code Linking**:
   - The final phase involves linking external libraries and other dependencies, combining the output with system libraries to create a final executable or deployable package.

### Types of Compilers:

1. **Ahead-of-Time (AOT) Compiler**:
   - Compiles source code into machine code **before** execution. The compiled program is then stored as an executable file.
   - **Example**: The **GCC** compiler compiles [[C]] and [[C++]] programs into native machine code.
   - **Example Command**:
     ```bash
     gcc my_program.c -o my_program
     ```

2. **Just-in-Time (JIT) Compiler**:
   - Compiles code during execution, typically used in conjunction with a virtual machine.
   - JIT compilers provide a mix of interpretation and compilation, allowing programs to run efficiently.
   - **Example**: The **HotSpot** JIT compiler in the [[Java]] JVM compiles bytecode into native machine code at runtime for better performance.

3. **Cross-Compiler**:
   - Compiles code to run on a different platform or architecture than the one the compiler is running on.
   - **Example**: A cross-compiler might compile code on a Windows machine to produce executables for Linux or ARM-based devices.

4. **Transcompiler (Source-to-Source Compiler)**:
   - Converts source code from one programming language to another.
   - **Example**: A TypeScript compiler (transpiler) converts [[TypeScript]] code into [[JavaScript]].

### Compiler vs. Interpreter:

- **Compiler**:
  - Translates the entire program before execution.
  - Produces a standalone executable or bytecode.
  - Generally faster during runtime, as the translation happens ahead of time.
  - **Example**: [[C]], [[C++]], [[Java]].

- **Interpreter**:
  - Translates and executes code line by line.
  - No standalone executable is produced.
  - Slower during runtime, as translation happens simultaneously with execution.
  - **Example**: [[Python]], [[Ruby]].

### Real-World Example:

- In a typical development environment, writing code in [[C++]] and running it involves:
  1. Writing the source code (`main.cpp`).
  2. Using a compiler like **GCC** to translate the source code into machine code (`main.exe` on Windows or `main.out` on Linux).
  3. Running the resulting executable directly on the machine.

### Popular Compilers:

1. **GCC (GNU Compiler Collection)**:
   - A widely used open-source compiler for languages like **C**, **C++**, and **Fortran**.
   - **Example** command to compile a C++ program:
     ```bash
     g++ my_program.cpp -o my_program
     ```

2. **Clang**:
   - A compiler front end for **C**, **C++**, and **Objective-C**, based on the **LLVM** infrastructure.
   - Known for producing efficient code and providing detailed error messages.

3. **Javac**:
   - The **Java** compiler that translates Java source code into **bytecode**, which is then executed by the **JVM**.
   - **Example** command to compile a Java program:
     ```bash
     javac MyClass.java
     ```

4. **TypeScript Compiler**:
   - Converts **TypeScript** code into **JavaScript**.
   - **Example** command:
     ```bash
     tsc my_script.ts
     ```

### Real-World Analogy:
- A **Compiler** is like a **translator** for instructions:
  - You write instructions in one language (source code), and the compiler translates them into another language (machine code) that the computer's hardware understands.
  - Once translated, the instructions can be followed repeatedly without needing the translator again.

### Related Concepts:
- [[Interpreter]]: Interprets and executes code line by line instead of compiling it into machine code beforehand.
- [[Bytecode]]: An intermediate representation of code (used by the [[JVM]]), which is interpreted or JIT-compiled.
- [[Just-in-Time Compiler (JIT)]]: A dynamic compiler that compiles code during execution.

Compilers are essential tools in software development, converting high-level source code into machine-readable code, enabling efficient execution on computers. Their role in building and optimizing executable programs is a cornerstone of modern programming.
## Pattern Matching

- **Pattern Matching** is a technique in programming where the structure of a given input is matched against a specific pattern or template. 
- It is often used for extracting data, checking types, or destructuring complex objects based on predefined structures.

### Key Idea:
- **Pattern Matching** helps to simplify complex conditional logic by matching the input with specific shapes or values.
- It's widely used in languages like **Scala**, **Haskell**, **Elixir**, and even in newer versions of **Python**.

### Common Use Cases:

1. **Type Checking**:
   - Pattern matching can be used to check the type of an input and execute different code depending on the type.
   - **Example** in Scala:
     ```scala
     def process(value: Any): String = value match {
         case i: Int => s"Integer: $i"
         case s: String => s"String: $s"
         case _ => "Unknown type"
     }
     println(process(42))      // Output: Integer: 42
     println(process("hello")) // Output: String: hello
     ```

2. **Destructuring Objects**:
   - You can destructure complex objects into their components by matching their structure.
   - **Example** in Python 3.10+:
     ```python
     match (1, 2, 3):
         case (1, x, y):
             print(f"x is {x}, y is {y}")
     ```
     This pattern matches a tuple with the first element as `1` and binds the second and third elements to `x` and `y`.

3. **Switch-Case Alternative**:
   - Pattern matching is often used as a more powerful alternative to traditional **switch-case** statements by matching patterns rather than just values.
   - **Example** in Haskell:
     ```haskell
     describeList :: [a] -> String
     describeList xs = case xs of
         [] -> "The list is empty."
         [x] -> "The list has one element."
         _ -> "The list has more than one element."
     ```

4. **Regular Expression Matching**:
   - Regular expressions are a form of pattern matching used to match text patterns.
   - **Example** in Java:
     ```java
     String input = "abc123";
     if (input.matches("[a-z]+[0-9]+")) {
         System.out.println("Pattern matches!");
     }
     ```

### Pattern Matching in Different Languages:

- **Scala**:
  - Scala uses **match expressions** to implement pattern matching:
    ```scala
    val day = "Monday"
    day match {
      case "Monday" => println("Start of the week")
      case "Friday" => println("Almost the weekend!")
      case _ => println("Just another day")
    }
    ```

- **Python**:
  - From Python 3.10, **match-case** syntax provides pattern matching:
    ```python
    def match_example(value):
        match value:
            case 1:
                return "One"
            case "hello":
                return "Greeting"
            case _:
                return "Unknown"
    ```

- **Elixir**:
  - Elixir uses pattern matching heavily in function definitions:
    ```elixir
    defmodule Example do
      def greet({name, age}) when age >= 18 do
        "Hello, #{name}, you are an adult!"
      end
      def greet({name, age}) do
        "Hi, #{name}, you are underage."
      end
    end
    ```

### Real-World Analogy:
- Pattern matching is like sorting mail:
  - If the envelope has **this address**, it goes into **this bin**.
  - If the envelope has **that address**, it goes into **that bin**.

### Related Concepts:
- [[If Statement]]: While `if` statements check simple conditions, **pattern matching** simplifies the process by checking for structured patterns.
- [[Regular Expression]]: A form of pattern matching for text.
- [[Destructuring]]: Pattern matching often involves destructuring objects or data into their components.

Pattern matching is a powerful tool for simplifying code and handling complex conditions in a structured and readable way. By matching values or structures against patterns, you can write clean, expressive, and concise code for a wide range of programming tasks.
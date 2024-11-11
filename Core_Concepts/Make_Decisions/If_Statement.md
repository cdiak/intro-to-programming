## If Statement

- An **If Statement** is a conditional structure in programming that **executes a block of code** based on whether a specified condition evaluates to **true**.
- It's a fundamental control flow tool, allowing programs to make decisions and respond dynamically to varying input or states.

### Key Idea:
- The **If Statement** checks a **Boolean condition** (i.e., true or false).
- If the condition evaluates to **true**, the code inside the `if` block runs.
- If the condition is **false**, the program skips the block or moves to an **else statement**, if present.

### Basic Syntax:

- **Example** in Java:
  ```java
  int num = 10;
  if (num > 5) {
      System.out.println("num is greater than 5");
  }
  ```
  - This checks if `num` is greater than 5. If true, the message is printed.

### Else Clause:
- The **Else Clause** provides an alternative action when the `if` condition is false.
- **Example**:
  ```java
  int num = 3;
  if (num > 5) {
      System.out.println("num is greater than 5");
  } else {
      System.out.println("num is not greater than 5");
  }
  ```

### Else If:
- The **Else If** clause allows multiple conditions to be checked in sequence.
- **Example**:
  ```java
  int score = 85;
  if (score >= 90) {
      System.out.println("Grade: A");
  } else if (score >= 80) {
      System.out.println("Grade: B");
  } else {
      System.out.println("Grade: C");
  }
  ```

### Nested If Statements:
- **If Statements** can be nested, meaning you can place one inside another to check complex conditions.
- **Example**:
  ```java
  int age = 20;
  boolean hasLicense = true;
  
  if (age >= 18) {
      if (hasLicense) {
          System.out.println("You can drive.");
      } else {
          System.out.println("You need a license to drive.");
      }
  } else {
      System.out.println("You are too young to drive.");
  }
  ```

### Real-World Analogy:
- An **If Statement** is like a decision-making process:
  - "If it’s raining, take an umbrella."
  - "Otherwise, enjoy the sunshine."

### If Statement in Different Languages:
- **Python**:
  ```python
  num = 10
  if num > 5:
      print("num is greater than 5")
  ```

- **JavaScript**:
  ```javascript
  let x = 3;
  if (x === 3) {
      console.log("x is 3");
  } else {
      console.log("x is not 3");
  }
  ```

### Related Concepts:
- [[Comparison Operator]]: Often used within `if` conditions to compare values.
- [[Boolean]]: The type of value (true/false) evaluated in an `if` statement.
- [[Logical Operator]]: Can be used to combine conditions inside an `if` statement.

An **If Statement** is a powerful tool for making programs responsive and adaptive to varying conditions and input. By testing conditions and branching code accordingly, it helps developers craft flexible and intelligent code.
## Boolean

- **Boolean** refers to a **data type** that can hold one of two possible values: **true** or **false**. It is named after the mathematician **George Boole**, who developed the foundations of Boolean logic in the 19th century. Boolean values are fundamental to **decision-making** in programming, as they allow a program to evaluate conditions and choose between different paths of execution.

### Key Idea:
- Booleans represent the concept of **truth** in computing. A Boolean value expresses whether a statement or condition is **true** or **false**.
  - **Example**: In a shopping cart system, a Boolean variable like `isCartEmpty` could hold `true` if the cart is empty and `false` otherwise.

### Boolean Values:
- **true**: Represents a condition that is satisfied or valid.
- **false**: Represents a condition that is not satisfied or invalid.

### Usage in Programming:
1. **Conditionals**:
   - Booleans are often used in [[if statements]] and other conditional structures to determine the flow of a program.
   - **Example**:
     ```java
     boolean isRaining = true;
     if (isRaining) {
         System.out.println("Take an umbrella.");
     } else {
         System.out.println("Enjoy the sunshine.");
     }
     ```
     In this example, the condition `isRaining` is evaluated as `true`, so the program executes the first block of code.

2. **Comparison Operators**:
   - Expressions using comparison operators, such as `==` (equals), `!=` (not equals), `>` (greater than), and `<` (less than), return Boolean values.
   - **Example**:
     ```java
     int age = 18;
     boolean isAdult = age >= 18;  // isAdult is true because age is 18
     ```

3. **Logical Operators**:
   - **Logical operators** like `&&` (AND), `||` (OR), and `!` (NOT) are used to combine or modify Boolean expressions.
     - **`&&` (AND)**: True only if both conditions are true.
     - **`||` (OR)**: True if at least one condition is true.
     - **`!` (NOT)**: Reverses the Boolean value.
   - **Example**:
     ```java
     boolean hasTicket = true;
     boolean isVIP = false;
     if (hasTicket || isVIP) {
         System.out.println("Welcome to the event.");
     }
     ```

### Boolean Expressions:
- A **Boolean expression** is any expression that evaluates to a Boolean value (`true` or `false`).
  - **Example**: The expression `5 > 3` evaluates to `true` because 5 is indeed greater than 3.
  
- **Boolean algebra**: The area of mathematics that deals with variables that have two distinct values (true/false, 1/0). Boolean algebra provides the theoretical foundation for Boolean logic, which is widely used in **computer science** for constructing **logical circuits**, [[conditional statements]], and algorithms.

### Common Boolean Operations:
1. **AND (&&)**: Both operands must be true for the result to be true.
   - Example: `true && false` results in `false`.
   
2. **OR (||)**: If either operand is true, the result is true.
   - Example: `true || false` results in `true`.
   
3. **NOT (!)**: Negates the Boolean value.
   - Example: `!true` results in `false`.

### Real-World Analogy:
- Consider a **light switch**: it has only two states, ON (true) or OFF (false). You can combine switches (Boolean expressions) using logical operations:
  - A room might be illuminated if **either** switch is ON (OR operation).
  - The lights might turn on only if **both** switches are ON (AND operation).

### Applications of Boolean:
- **Control flow**: Boolean values are central to [[if statements]], [[for loops]], and other structures that determine which code gets executed.
- **Assertions**: Used in testing, assertions rely on Boolean conditions to verify that a program behaves as expected.
- **Bitwise Operations**: Boolean logic is fundamental to bitwise operations used in low-level programming to manipulate individual bits of data.

### Related Concepts:
- [[If Statement]]: A control structure that uses Boolean values to determine the flow of execution.
- [[Logical Operator]]: Operators such as AND, OR, and NOT are used to combine or manipulate Boolean expressions.
- [[Boolean Logic]]: The system of rules governing Boolean values, foundational for decision-making in programming and logic design.
- [[Truth Table]]: A table that shows all possible combinations of Boolean values and their resulting outputs for a particular logical operation.

Boolean values are essential to decision-making in programming, providing a simple yet powerful way to evaluate and execute different paths of logic in a program. They are used universally across programming languages to represent conditions, states, and logical expressions.
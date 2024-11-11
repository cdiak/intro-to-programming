## Logical Operator

- A **Logical Operator** is a symbol or keyword used in programming to combine or manipulate **Boolean values** (true or false).
- Logical operators are primarily used in conditional statements, such as [[If Statement]]s, to create more complex conditions by combining multiple comparison results.

### Key Idea:
- Logical operators evaluate multiple **Boolean expressions** and return a **Boolean result** (either true or false).
- They allow for more sophisticated decision-making in programs by combining conditions.

### Common Logical Operators:

1. **AND (`&&`)**:
   - Returns **true** only if **both** conditions are true.
   - **Example**:
     ```java
     int age = 25;
     boolean hasLicense = true;
     if (age > 18 && hasLicense) {
         System.out.println("You can drive.");
     }
     ```
     This checks if both conditions (`age > 18` and `hasLicense == true`) are true. If so, the message is printed.

2. **OR (`||`)**:
   - Returns **true** if **either** condition is true.
   - **Example**:
     ```java
     int score = 90;
     if (score == 90 || score == 100) {
         System.out.println("You did well on the test.");
     }
     ```
     This checks if either `score == 90` or `score == 100`. If either is true, the message is printed.

3. **NOT (`!`)**:
   - Returns the **opposite** Boolean value. If a condition is true, `!` makes it false, and vice versa.
   - **Example**:
     ```java
     boolean isRainy = false;
     if (!isRainy) {
         System.out.println("It's a sunny day.");
     }
     ```
     This checks if `isRainy` is **not** true (i.e., false), and prints the message if it is.

### Combining Logical Operators:
- Logical operators can be used together to form **complex conditions**.
- **Example**:
  ```java
  int temperature = 25;
  boolean isRaining = false;
  if (temperature > 20 && temperature < 30 && !isRaining) {
      System.out.println("The weather is perfect for a walk.");
  }
  ```

### Precedence:
- **Logical operators** follow a **precedence** order, meaning some operators are evaluated before others. Generally:
  - `!` (NOT) has the **highest precedence**.
  - `&&` (AND) is evaluated **before** `||` (OR), but you can use parentheses `()` to control the order of evaluation.

### Real-World Analogy:
- **Logical operators** work like rules in decision-making:
  - "If it’s **sunny** AND the temperature is **above 20°C**, we’ll go to the park."
  - "If it’s **rainy** OR we’re **too tired**, we’ll stay home."

### Logical Operators in Different Languages:
- **Python**:
  - In Python, `and`, `or`, and `not` are used:
    ```python
    is_raining = False
    temperature = 25
    if not is_raining and temperature > 20:
        print("Great day for a walk!")
    ```

- **JavaScript**:
  - JavaScript uses `&&`, `||`, and `!` like Java:
    ```javascript
    let isSunny = true;
    let temp = 30;
    if (isSunny && temp > 25) {
        console.log("Let's go to the beach!");
    }
    ```

### Related Concepts:
- [[Comparison Operator]]: Logical operators are often used in conjunction with comparison operators.
- [[If Statement]]: Logical operators help form complex conditions in `if` statements.
- [[Boolean]]: The values manipulated by logical operators (true/false).

Logical operators allow you to build more sophisticated logic by combining simple conditions into more powerful expressions, enabling a program to make informed decisions based on multiple factors.
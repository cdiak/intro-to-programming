## Do-While Loop

- A **Do-While Loop** is a type of control flow statement that executes a block of code **at least once**, and then repeatedly executes the block as long as a specified condition evaluates to `true`.
- Unlike other loops (like `while` loops or `for` loops), the condition in a do-while loop is evaluated **after** the code block has executed, ensuring the block runs at least once.

### Key Idea:
- In a **Do-While Loop**, the code block inside the loop will always be executed **once**, even if the condition is initially false. After the first execution, the condition is checked, and if it evaluates to `true`, the loop continues to execute. If it evaluates to `false`, the loop stops.

---

### Syntax:

The syntax for a **Do-While Loop** differs slightly across languages but generally follows this structure:

#### **General Syntax**:
```java
do {
    // Code block to execute
} while (condition);
```

- **do**: Marks the beginning of the loop.
- **condition**: A Boolean expression that is evaluated after each iteration. If the condition is `true`, the loop continues; if `false`, the loop stops.

---

### Example in Different Programming Languages:

#### **Java**:
```java
public class Main {
    public static void main(String[] args) {
        int i = 0;
        do {
            System.out.println("i is: " + i);
            i++;
        } while (i < 5);
    }
}
```

**Explanation**:
- The code block prints the value of `i` and increments it by 1.
- The loop will execute as long as `i` is less than 5.
- Output:
  ```
  i is: 0
  i is: 1
  i is: 2
  i is: 3
  i is: 4
  ```

#### **Python** (simulating a Do-While Loop):
Python does not have a built-in `do-while` loop, but you can simulate it using a `while True` loop with a `break` condition.
```python
i = 0
while True:
    print("i is:", i)
    i += 1
    if i >= 5:
        break
```

#### **C++**:
```cpp
#include <iostream>
using namespace std;

int main() {
    int i = 0;
    do {
        cout << "i is: " << i << endl;
        i++;
    } while (i < 5);

    return 0;
}
```

---

### Key Characteristics of a Do-While Loop:

1. **Guaranteed First Execution**:
   - The block of code inside the `do` section is guaranteed to run at least once, even if the condition in the `while` clause is false.
   - **Example**:
     ```java
     int i = 10;
     do {
         System.out.println("i is: " + i);
     } while (i < 5);  // Condition is false, but the loop runs once.
     ```

2. **Post-condition Check**:
   - The condition is checked **after** the loop body has been executed. This is the primary difference between a `do-while` loop and a `while` loop, where the condition is checked before the loop body.

3. **Useful for Input Validation**:
   - Do-while loops are often used for input validation or tasks that require at least one execution before checking a condition (e.g., prompting a user for input until they provide a valid response).

---

### Use Case Examples:

1. **Input Validation** (Java):
   ```java
   import java.util.Scanner;

   public class Main {
       public static void main(String[] args) {
           Scanner scanner = new Scanner(System.in);
           int number;
           do {
               System.out.print("Enter a number between 1 and 10: ");
               number = scanner.nextInt();
           } while (number < 1 || number > 10);

           System.out.println("You entered: " + number);
       }
   }
   ```

   **Explanation**:
   - The loop prompts the user to enter a number between 1 and 10.
   - The loop will continue to execute until the user provides a valid number.

2. **Menu-Driven Program** (C++):
   ```cpp
   #include <iostream>
   using namespace std;

   int main() {
       int choice;
       do {
           cout << "Menu:\n";
           cout << "1. Option 1\n";
           cout << "2. Option 2\n";
           cout << "3. Exit\n";
           cout << "Enter your choice: ";
           cin >> choice;

           switch (choice) {
               case 1:
                   cout << "You chose Option 1\n";
                   break;
               case 2:
                   cout << "You chose Option 2\n";
                   break;
               case 3:
                   cout << "Exiting...\n";
                   break;
               default:
                   cout << "Invalid choice. Try again.\n";
           }
       } while (choice != 3);

       return 0;
   }
   ```

   **Explanation**:
   - The menu is displayed to the user, and the user makes a choice.
   - The loop continues until the user selects the option to exit (i.e., choice = 3).

---

### Do-While Loop vs While Loop:

| Feature              | **Do-While Loop**                         | **While Loop**                             |
|----------------------|-------------------------------------------|--------------------------------------------|
| **Condition Evaluation** | Condition is evaluated **after** the loop body executes. | Condition is evaluated **before** the loop body executes. |
| **First Execution**   | The loop body is **always executed at least once**. | The loop body **may not execute** at all if the condition is false initially. |
| **Use Case**          | Useful when the block must run at least once, like input validation or menus. | Useful when the loop should only execute if the condition is true at the start. |

---

### Real-World Analogy:
- A **Do-While Loop** is like **attempting a task before checking if it’s necessary to repeat it**:
  - Imagine a person who has to attempt a quiz before seeing if they meet the requirements for retrying. The quiz must be taken at least once before any decision is made on whether they need to take it again.

---

### Related Concepts:
- [[While Loop]]: A control flow statement that repeatedly executes a block of code as long as the specified condition is true.
- [[For Loop]]: A control flow statement that executes a block of code a specific number of times based on an iterator.

The **Do-While Loop** ensures that the code runs at least once before checking the condition, making it particularly useful for scenarios where the first iteration is necessary regardless of the condition's initial value.
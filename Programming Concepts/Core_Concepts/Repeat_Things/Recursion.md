## Recursion

- **Recursion** is a programming technique where a function calls **itself** in order to solve a problem. Recursion is often used for tasks that can be broken down into smaller, similar subproblems, such as traversing trees, calculating factorials, or solving mathematical sequences.
- A recursive function typically has two main components:
  - **Base Case**: The condition under which the function stops calling itself (to prevent infinite recursion).
  - **Recursive Case**: The part where the function calls itself with modified parameters, moving the problem toward the base case.

### Key Idea:
- **Recursion** solves a problem by dividing it into smaller, more manageable instances of the same problem. Each recursive call gets closer to the base case, at which point the recursion stops, and the accumulated results are returned back up the chain of recursive calls.

---

### Components of Recursion:

1. **Base Case**:
   - The **base case** is the condition that stops the recursion. Without a base case, the recursion would go on indefinitely, leading to a stack overflow.
   - **Example**: In calculating the factorial of a number, the base case is when `n` equals 1 because the factorial of 1 is 1.

2. **Recursive Case**:
   - The **recursive case** is where the function calls itself with a modified argument, reducing the problem’s complexity with each call.
   - **Example**: In calculating the factorial of a number, the recursive case is when `n` is greater than 1. The function calls itself with `n - 1`.

---

### Example of Recursion in Different Programming Languages:

#### **Python**:
1. **Factorial Using Recursion**:
   ```python
   def factorial(n):
       if n == 1:  # Base case
           return 1
       else:
           return n * factorial(n - 1)  # Recursive case

   print(factorial(5))  # Outputs: 120
   ```

   **Explanation**:
   - **Base case**: When `n == 1`, the recursion stops.
   - **Recursive case**: The function multiplies `n` by the result of `factorial(n - 1)`, eventually breaking the problem down to `factorial(1)`.

#### **Java**:
1. **Factorial Using Recursion**:
   ```java
   public class Main {
       public static int factorial(int n) {
           if (n == 1) {  // Base case
               return 1;
           } else {
               return n * factorial(n - 1);  // Recursive case
           }
       }

       public static void main(String[] args) {
           System.out.println(factorial(5));  // Outputs: 120
       }
   }
   ```

#### **C++**:
1. **Factorial Using Recursion**:
   ```cpp
   #include <iostream>
   using namespace std;

   int factorial(int n) {
       if (n == 1)  // Base case
           return 1;
       else
           return n * factorial(n - 1);  // Recursive case
   }

   int main() {
       cout << factorial(5) << endl;  // Outputs: 120
       return 0;
   }
   ```

---

### How Recursion Works:

1. **Recursive Function Calls**:
   - Each recursive function call creates a new frame on the call stack. Each frame has its own set of parameters and local variables.
   - As the function calls itself, the problem size reduces, and eventually, the base case is reached. At that point, the recursion stops, and the results are returned up the call stack.

2. **Unwinding the Stack**:
   - Once the base case is reached, the function starts returning the results back up the call stack, combining the results of each recursive call.
   - **Example**: In the factorial example, when `factorial(1)` is reached, it returns 1, and the recursive calls then "unwind" by multiplying each result until the original `factorial(5)` call receives its final value.

---

### Common Use Cases for Recursion:

1. **Factorial Calculation**:
   - **Factorial** of a number `n` is the product of all positive integers less than or equal to `n`.
   - **Formula**: `n! = n * (n - 1)!`

   **Example (Python)**:
   ```python
   def factorial(n):
       if n == 1:
           return 1
       else:
           return n * factorial(n - 1)
   ```

2. **Fibonacci Sequence**:
   - The **Fibonacci sequence** is a series of numbers where each number is the sum of the two preceding ones.
   - **Formula**: `F(n) = F(n - 1) + F(n - 2)`, where `F(0) = 0` and `F(1) = 1`.

   **Example (Python)**:
   ```python
   def fibonacci(n):
       if n == 0:
           return 0
       elif n == 1:
           return 1
       else:
           return fibonacci(n - 1) + fibonacci(n - 2)

   print(fibonacci(5))  # Outputs: 5
   ```

3. **Tree Traversal**:
   - Recursive functions are commonly used to traverse **binary trees** or **graphs**, where each node may have multiple child nodes. Recursion allows visiting each node in the structure without writing complex nested loops.

   **Example (Python)**:
   ```python
   class Node:
       def __init__(self, value):
           self.value = value
           self.left = None
           self.right = None

   def in_order_traversal(node):
       if node:
           in_order_traversal(node.left)  # Traverse left subtree
           print(node.value)  # Visit node
           in_order_traversal(node.right)  # Traverse right subtree

   root = Node(10)
   root.left = Node(5)
   root.right = Node(20)

   in_order_traversal(root)
   ```

4. **Permutations and Combinations**:
   - Recursion is useful for generating all **permutations** or **combinations** of a set of elements.

   **Example (Python)**:
   ```python
   def permute(s, chosen=''):
       if len(s) == 0:
           print(chosen)
       else:
           for i in range(len(s)):
               # Choose
               c = s[i]
               chosen += c
               # Explore
               permute(s[:i] + s[i+1:], chosen)
               # Un-choose
               chosen = chosen[:-1]

   permute('abc')
   ```

---

### Recursion vs Iteration:

| Feature             | **Recursion**                            | **Iteration**                               |
|---------------------|------------------------------------------|---------------------------------------------|
| **Mechanism**        | A function calls itself to solve smaller instances of the problem. | A loop (e.g., `for`, `while`) repeats a block of code until a condition is met. |
| **Termination**      | Requires a base case to stop the recursion. | Terminates based on a condition in the loop (e.g., counter or condition). |
| **State Management** | Recursion uses the call stack to keep track of function calls and their states. | Iteration uses loop variables to track state. |
| **Efficiency**       | Can be less efficient and use more memory due to deep call stacks. | Typically more efficient in terms of memory usage. |
| **Use Case**         | Best for problems like tree traversal, divide and conquer algorithms, or recursive mathematical sequences. | Best for problems where the number of iterations is fixed or easily calculable. |

---

### Pros and Cons of Recursion:

#### **Advantages**:
1. **Simplified Code**:
   - Recursion often leads to cleaner and simpler code, especially for problems like tree traversal, graph algorithms, or divide-and-conquer strategies (like mergesort or quicksort).

2. **Elegant Solutions**:
   - Some problems, such as the Tower of Hanoi or generating permutations, are more naturally and elegantly solved using recursion.

#### **Disadvantages**:
1. **Performance and Memory**:
   - Recursion can be **less efficient** than iteration because it uses more memory due to the call stack. Each recursive call consumes stack space, which can lead to a **stack overflow** if the recursion is too deep.

2. **Hard to Debug**:
   - Recursive functions can be harder to debug or trace, especially for beginners, because they involve multiple function calls on the stack.

3. **Stack Overflow**:
   - If recursion depth exceeds the maximum call stack size, it can cause a **stack overflow**. This is especially problematic with deep recursion, where many recursive calls are made.

---

### Real-World Analogy:
- **Recursion** is like **nesting dolls**:
   - Imagine a set of nested dolls, where each doll contains a smaller one inside it. To get to the smallest doll (the base case), you must open each doll one by one. Once you reach the smallest doll, you begin closing them in reverse order (unwinding the recursion).

---

### Related Concepts:
- [[Iteration]]: An alternative approach to solving problems through loops. Both recursion and iteration can achieve similar results, but they differ in mechanism and efficiency.
- [[Base Case]]: The stopping condition in a recursive function that prevents infinite recursion.
- [[Call Stack]]: The data structure that stores information about active subroutines or function calls, used heavily in recursion.

**Recursion** is a powerful and elegant approach to problem-solving in programming, allowing complex tasks to be solved with concise and readable code. However, it should be used with caution, considering memory limitations and performance issues.
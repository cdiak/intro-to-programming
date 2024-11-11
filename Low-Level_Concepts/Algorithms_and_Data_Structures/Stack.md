## Stack

- A **Stack** is a linear data structure that follows the **Last In, First Out (LIFO)** principle, meaning the last element added to the stack is the first one to be removed. Stacks are used in various applications such as managing function calls in recursion, expression evaluation, undo mechanisms in editors, and more.

### Key Idea:
- In a **Stack**, elements are added to and removed from the **top** of the stack. This ensures that the most recently added item is the first to be accessed (LIFO order).

---

### Components of a Stack:

1. **Top**:
   - The **Top** refers to the element currently at the top of the stack, which is the next element to be removed when a `pop` operation is performed.

2. **Push**:
   - **Push** is the operation of adding an element to the top of the stack.

3. **Pop**:
   - **Pop** is the operation of removing the top element from the stack.

4. **Peek**:
   - **Peek** (or **Top**) returns the top element of the stack without removing it.

5. **IsEmpty**:
   - **IsEmpty** checks whether the stack is empty, i.e., whether it contains any elements.

---

### Types of Stacks:

1. **Static Stack**:
   - A **Static Stack** is implemented using an array with a fixed size. Once the array is full, no more elements can be pushed onto the stack.
   - **Example**: A stack implemented with a predefined size of 100 elements.

2. **Dynamic Stack**:
   - A **Dynamic Stack** grows and shrinks dynamically, typically using a linked list or a dynamic array that resizes itself when necessary.
   - **Example**: A stack implemented using a linked list, where memory is allocated dynamically as elements are added.

---

### Stack Operations:

1. **Push (Add an Element)**:
   - Adds an element to the top of the stack.
   - **Time Complexity**: `O(1)` for both array-based and linked list-based implementations.
   - **Example**:
     ```python
     def push(self, data):
         self.stack.append(data)  # Append to the top
     ```

2. **Pop (Remove an Element)**:
   - Removes the top element from the stack.
   - **Time Complexity**: `O(1)` for both array-based and linked list-based implementations.
   - **Example**:
     ```python
     def pop(self):
         if not self.is_empty():
             return self.stack.pop()  # Remove from the top
         else:
             raise Exception("Stack is empty")
     ```

3. **Peek (View Top Element)**:
   - Returns the top element of the stack without removing it.
   - **Time Complexity**: `O(1)`
   - **Example**:
     ```python
     def peek(self):
         if not self.is_empty():
             return self.stack[-1]  # View the top element
         else:
             raise Exception("Stack is empty")
     ```

4. **IsEmpty (Check if Stack is Empty)**:
   - Checks whether the stack contains any elements.
   - **Time Complexity**: `O(1)`
   - **Example**:
     ```python
     def is_empty(self):
         return len(self.stack) == 0
     ```

---

### Stack Implementation in Python (Using List):

```python
class Stack:
    def __init__(self):
        self.stack = []

    def push(self, data):
        self.stack.append(data)  # Add element to the top

    def pop(self):
        if not self.is_empty():
            return self.stack.pop()  # Remove element from the top
        else:
            raise Exception("Stack is empty")

    def peek(self):
        if not self.is_empty():
            return self.stack[-1]  # View the top element
        else:
            raise Exception("Stack is empty")

    def is_empty(self):
        return len(self.stack) == 0

# Usage
s = Stack()
s.push(10)
s.push(20)
print(s.peek())    # Outputs: 20
print(s.pop())     # Outputs: 20
print(s.peek())    # Outputs: 10
```

---

### Stack Implementation in Python (Using Linked List):

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class Stack:
    def __init__(self):
        self.top = None  # Initialize top as None (empty stack)

    def push(self, data):
        new_node = Node(data)
        new_node.next = self.top  # Link the new node to the previous top
        self.top = new_node       # Make the new node the new top

    def pop(self):
        if self.is_empty():
            raise Exception("Stack is empty")
        popped = self.top.data    # Store the data to return
        self.top = self.top.next  # Remove the top element
        return popped

    def peek(self):
        if self.is_empty():
            raise Exception("Stack is empty")
        return self.top.data  # Return the data at the top without removing it

    def is_empty(self):
        return self.top is None

# Usage
s = Stack()
s.push(10)
s.push(20)
print(s.peek())    # Outputs: 20
print(s.pop())     # Outputs: 20
print(s.peek())    # Outputs: 10
```

---

### Time Complexity of Stack Operations:

- **Push**: `O(1)` (constant time)
- **Pop**: `O(1)` (constant time)
- **Peek**: `O(1)` (constant time)
- **IsEmpty**: `O(1)` (constant time)

---

### Advantages of Stacks:

1. **Simple and Efficient**:
   - Stacks offer simple, efficient operations for adding and removing elements, making them ideal for managing function calls, expression evaluation, and more.

2. **Memory Efficiency**:
   - Dynamic stacks (implemented using linked lists) grow as needed, avoiding wasted memory that might occur with static structures like arrays.

3. **Supports Recursive Algorithms**:
   - Stacks are naturally suited to handle **recursion**, where function calls are placed on the stack as they are invoked and popped as they return.

---

### Disadvantages of Stacks:

1. **Limited Access**:
   - Stacks follow the LIFO principle, meaning that only the top element is accessible. Elements below the top cannot be accessed directly.

2. **Overflow**:
   - In static stack implementations (using arrays), the stack can overflow if the array runs out of space. Dynamic stacks do not have this issue but may run into memory constraints in extreme cases.

---

### Applications of Stacks:

1. **Function Call Management (Call Stack)**:
   - Stacks are used to manage function calls in programming. When a function is called, its local variables and return address are pushed onto the **call stack**, and they are popped off when the function returns.

2. **Expression Evaluation**:
   - Stacks are used in the evaluation of arithmetic expressions (e.g., infix, postfix, or prefix expressions). For example, **postfix notation** (Reverse Polish Notation) uses a stack to evaluate complex expressions efficiently.

3. **Undo Mechanism**:
   - Many software applications (e.g., text editors) implement **undo** functionality using a stack. Each action is pushed onto the stack, and an undo operation pops the last action.

4. **Balanced Parentheses**:
   - Stacks are used to check whether parentheses in an expression are balanced. When an opening parenthesis is encountered, it is pushed onto the stack, and when a closing parenthesis is encountered, the stack is popped to ensure matching pairs.

5. **Depth-First Search (DFS)**:
   - Stacks are used in the **Depth-First Search (DFS)** algorithm to traverse graphs and trees. The stack allows the algorithm to explore one branch as deeply as possible before backtracking.

6. **Backtracking**:
   - Stacks are used in algorithms that involve backtracking, such as solving puzzles (e.g., maze traversal, N-Queens problem). The stack stores decisions made at each step, allowing the algorithm to backtrack when necessary.

---

### Real-World Analogy:
- A **Stack** is like a **stack of plates**:
   - Plates are added to the stack one on top of the other, and the last plate placed on the stack is the first one you remove when you need a plate. This follows the **LIFO** principle: **Last In, First Out**.

---

### Related Concepts:
- [[Queue]]: A queue follows the **First In, First Out (FIFO)** principle, opposite to the stack’s LIFO behavior.
- [[Linked List]]: Stacks can be implemented using linked lists for dynamic memory management and efficient operations.
- [[Recursion]]: Stacks are used in recursion to store information about function calls.

**Stacks** are a fundamental data structure in computer science, providing a simple yet powerful way to manage data in a LIFO order. They are widely used in algorithm design, function call management, and in applications requiring backtracking or undo functionality.
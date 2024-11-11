## Queue

- A **Queue** is a linear data structure that follows the **First In, First Out (FIFO)** principle, meaning that the first element added to the queue will be the first one to be removed. Queues are used in various applications where order of operations must be preserved, such as scheduling tasks, managing resources, and simulating real-world processes like waiting lines.

### Key Idea:
- In a **Queue**, elements are added at the **rear** (or **tail**) and removed from the **front** (or **head**). This ensures that the first element added is the first one to be processed, following the FIFO (First In, First Out) order.

---

### Components of a Queue:

1. **Front**:
   - The **Front** refers to the first element of the queue, which will be removed first when an element is dequeued.

2. **Rear**:
   - The **Rear** refers to the last element in the queue, where new elements are added (enqueued).

3. **Enqueue**:
   - **Enqueue** is the operation of adding an element to the rear of the queue.

4. **Dequeue**:
   - **Dequeue** is the operation of removing the front element from the queue.

5. **IsEmpty**:
   - **IsEmpty** checks whether the queue is empty, i.e., whether it contains any elements.

6. **IsFull** (for bounded queues):
   - **IsFull** checks whether the queue is full (if it has a fixed size).

---

### Types of Queues:

1. **Simple Queue (Linear Queue)**:
   - A **Simple Queue** is the basic form of a queue, where elements are added to the rear and removed from the front. It follows the strict FIFO principle.
   - **Example**:
     ```
     Enqueue: 10 -> 20 -> 30
     Dequeue: 10 (Next element to be dequeued: 20)
     ```

2. **Circular Queue**:
   - A **Circular Queue** is a variation where the last position is connected to the first position, forming a circle. It solves the problem of wasted space in a linear queue by reusing empty spaces created by dequeuing.
   - **Example**:
     ```
     Front -> 10 -> 20 -> 30 -> Rear
     (After dequeuing, 10 is removed, and new elements can reuse the space at the front.)
     ```

3. **Priority Queue**:
   - In a **Priority Queue**, each element has a priority associated with it, and the element with the highest priority is dequeued first, regardless of its position in the queue.
   - **Example**:
     ```
     Priority: 1 (High), 2 (Medium), 3 (Low)
     Enqueue: (A, 2), (B, 1), (C, 3)
     Dequeue: (B, 1) is dequeued first due to its highest priority.
     ```

4. **Deque (Double-Ended Queue)**:
   - A **Deque** (Double-Ended Queue) allows insertion and deletion from both the front and rear of the queue, unlike the simple queue, which only allows operations at one end.
   - **Example**:
     ```
     Front <- 10 -> 20 -> 30 -> Rear
     (You can enqueue or dequeue from both the front and the rear.)
     ```

---

### Queue Operations:

1. **Enqueue (Add an Element)**:
   - Adds an element to the rear of the queue.
   - **Time Complexity**: `O(1)` for linked list implementation or `O(1)` for array implementation if not full (with no resizing needed).
   - **Example**:
     ```python
     def enqueue(self, data):
         if self.is_full():
             raise Exception("Queue is full")
         self.queue.append(data)  # Append to the end (rear)
     ```

2. **Dequeue (Remove an Element)**:
   - Removes an element from the front of the queue.
   - **Time Complexity**: `O(1)` for both array and linked list implementations.
   - **Example**:
     ```python
     def dequeue(self):
         if self.is_empty():
             raise Exception("Queue is empty")
         return self.queue.pop(0)  # Remove from the front
     ```

3. **Peek (View Front Element)**:
   - Returns the element at the front of the queue without removing it.
   - **Time Complexity**: `O(1)`
   - **Example**:
     ```python
     def peek(self):
         if self.is_empty():
             raise Exception("Queue is empty")
         return self.queue[0]  # View the front element
     ```

4. **IsEmpty (Check if Queue is Empty)**:
   - Checks if the queue contains any elements.
   - **Time Complexity**: `O(1)`
   - **Example**:
     ```python
     def is_empty(self):
         return len(self.queue) == 0
     ```

5. **IsFull (Check if Queue is Full)**:
   - In the case of a bounded queue, it checks if the queue has reached its maximum capacity.
   - **Time Complexity**: `O(1)`
   - **Example**:
     ```python
     def is_full(self):
         return len(self.queue) == self.max_size
     ```

---

### Queue Implementation in Python (Using List):

```python
class Queue:
    def __init__(self, max_size):
        self.queue = []
        self.max_size = max_size

    def enqueue(self, data):
        if len(self.queue) >= self.max_size:
            print("Queue is full!")
        else:
            self.queue.append(data)

    def dequeue(self):
        if not self.is_empty():
            return self.queue.pop(0)
        else:
            return "Queue is empty!"

    def is_empty(self):
        return len(self.queue) == 0

    def peek(self):
        if not self.is_empty():
            return self.queue[0]
        else:
            return "Queue is empty!"

# Usage
q = Queue(5)
q.enqueue(10)
q.enqueue(20)
print(q.peek())    # Outputs: 10
print(q.dequeue()) # Outputs: 10
print(q.peek())    # Outputs: 20
```

---

### Queue Implementation in Python (Using Collections' Deque):

```python
from collections import deque

class Queue:
    def __init__(self):
        self.queue = deque()

    def enqueue(self, data):
        self.queue.append(data)  # Append to the rear

    def dequeue(self):
        if not self.is_empty():
            return self.queue.popleft()  # Remove from the front
        else:
            raise Exception("Queue is empty")

    def is_empty(self):
        return len(self.queue) == 0

    def peek(self):
        if not self.is_empty():
            return self.queue[0]
        else:
            raise Exception("Queue is empty")

# Usage
q = Queue()
q.enqueue(10)
q.enqueue(20)
print(q.peek())    # Outputs: 10
print(q.dequeue()) # Outputs: 10
print(q.peek())    # Outputs: 20
```

---

### Time Complexity of Queue Operations:

- **Enqueue**: `O(1)`
- **Dequeue**: `O(1)`
- **Peek**: `O(1)`
- **IsEmpty**: `O(1)`
- **IsFull**: `O(1)` (for bounded queues)

---

### Advantages of Queues:

1. **Order Preservation**:
   - Queues maintain the order of elements, ensuring that the first element added is the first one processed (FIFO). This is essential in many applications like task scheduling or buffering.

2. **Efficient Operations**:
   - Insertion (enqueue) and removal (dequeue) operations are efficient (`O(1)` time complexity), allowing for quick processing of tasks.

3. **Dynamic Memory Management**:
   - In dynamic queue implementations (like linked lists), memory is used efficiently, allowing the queue to grow and shrink as needed without pre-defining its size.

---

### Disadvantages of Queues:

1. **No Direct Access**:
   - Unlike arrays or lists, queues do not allow direct access to elements. To access a specific element, you must dequeue elements until you reach it.

2. **Limited Flexibility**:
   - Operations are restricted to the front and rear of the queue. Elements cannot be added or removed from the middle.

---

### Applications of Queues:

1. **Task Scheduling**:
   - Queues are used in operating systems and task managers to schedule tasks based on their arrival order. For example, a **job queue** maintains tasks that need to be executed in a FIFO order.

2. **Resource Management**:
   - Queues are used to manage resources in systems where multiple users or processes need access to a shared resource (e.g., CPU scheduling, print queues).

3. **Breadth-First Search (BFS)**:
   - Queues are essential in the **Breadth-First Search** algorithm, which explores a graph level by level. Each node is enqueued when it is discovered and dequeued when it is processed.

4. **Data Buffers**:
   - Queues are used in buffering processes, such as **IO Buffers** or **network packet queues**, where data needs to be processed in the same order it arrives.

5. **Simulation of Real-World Scenarios**:
   - Queues are often used in simulations where entities need to wait in line, such as simulating customers waiting for service in a bank or store.

---

### Real-World Analogy:
- A **Queue** is like a **line of people waiting at a bank**:
   - The first person to join the line is the first to be served (FIFO), and new customers are added to the back of the line. When someone is served, they leave the front of the line, just like dequeuing from a queue.

---

### Related Concepts:
- [[Stack]]: A stack follows the **Last In, First Out (LIFO)** principle, opposite of a queue.
- [[Linked List]]: A queue can be implemented using a linked list to allow dynamic memory allocation and efficient enqueue and dequeue operations.
- [[Priority Queue]]: A variant of a queue where elements are dequeued based on priority, not just FIFO order.

**Queues** are essential data structures in computer science, providing a simple but powerful way to manage ordered data in a FIFO manner. With their broad range of applications, queues are used in everything from scheduling tasks to managing resources and simulating real-world processes.
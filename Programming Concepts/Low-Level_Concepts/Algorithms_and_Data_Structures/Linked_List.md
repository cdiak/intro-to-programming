## Linked List

- A **Linked List** is a linear data structure where elements (called **nodes**) are linked together using pointers. Each node contains **data** and a **reference (or pointer)** to the next node in the sequence. Unlike arrays, linked lists do not require contiguous memory, allowing efficient insertion and deletion operations at any point in the list.

### Key Idea:
- A **Linked List** organizes data as a sequence of nodes, where each node stores a data element and a reference to the next node. This structure allows for dynamic memory allocation and makes it easy to add or remove elements without needing to shift the rest of the elements, unlike arrays.

---

### Components of a Linked List:

1. **Node**:
   - A **Node** is the basic building block of a linked list. Each node contains two parts:
     - **Data**: The value stored in the node.
     - **Next**: A pointer/reference to the next node in the sequence.
   - **Example**:
     ```python
     class Node:
         def __init__(self, data):
             self.data = data  # The value of the node
             self.next = None  # Pointer to the next node
     ```

2. **Head**:
   - The **Head** is the first node in the linked list. It serves as the starting point for traversal. If the list is empty, the head is `null` or `None`.

3. **Tail**:
   - The **Tail** is the last node in the linked list. The `next` pointer of the tail node is `null` or `None`, indicating the end of the list.

4. **Null Reference**:
   - A **null reference** (`None` in Python) is used to signify the end of the linked list.

---

### Types of Linked Lists:

1. **Singly Linked List**:
   - A **Singly Linked List** is a type of linked list where each node contains data and a reference to the next node in the list. The list can only be traversed in one direction, from the head to the tail.
   - **Example**:
     ```
     Head -> Node1 -> Node2 -> Node3 -> None
     ```

2. **Doubly Linked List**:
   - A **Doubly Linked List** is a linked list where each node contains data, a reference to the next node, and a reference to the previous node. This allows traversal in both directions (forward and backward).
   - **Example**:
     ```
     None <- Node1 <-> Node2 <-> Node3 -> None
     ```

3. **Circular Linked List**:
   - A **Circular Linked List** is a linked list where the last node points back to the head, forming a circular structure. Circular linked lists can be either singly or doubly linked.
   - **Example** (Singly Circular):
     ```
     Head -> Node1 -> Node2 -> Node3 -> Head
     ```

---

### Operations on Linked Lists:

1. **Insertion**:
   - **Insertion** in a linked list can be performed at the beginning, at the end, or at a specific position.

   - **Insert at the Beginning** (Singly Linked List):
     ```python
     class LinkedList:
         def __init__(self):
             self.head = None

         def insert_at_beginning(self, data):
             new_node = Node(data)
             new_node.next = self.head
             self.head = new_node

     # Usage
     ll = LinkedList()
     ll.insert_at_beginning(10)
     ll.insert_at_beginning(20)
     ```

   - **Insert at the End**:
     ```python
     def insert_at_end(self, data):
         new_node = Node(data)
         if self.head is None:
             self.head = new_node
             return
         last = self.head
         while last.next:
             last = last.next
         last.next = new_node
     ```

2. **Deletion**:
   - **Deletion** can remove a node from the beginning, the end, or a specific position in the linked list.

   - **Delete from Beginning**:
     ```python
     def delete_from_beginning(self):
         if self.head:
             self.head = self.head.next
     ```

   - **Delete from End**:
     ```python
     def delete_from_end(self):
         if self.head is None:
             return
         if self.head.next is None:
             self.head = None
             return
         temp = self.head
         while temp.next.next:
             temp = temp.next
         temp.next = None
     ```

3. **Traversal**:
   - **Traversal** involves visiting each node in the list, typically for displaying or processing the data in each node.
   - **Example**:
     ```python
     def traverse(self):
         current = self.head
         while current:
             print(current.data, end=' ')
             current = current.next
     ```

4. **Search**:
   - **Searching** for an element in a linked list involves traversing the list and comparing each node's data with the target value.
   - **Example**:
     ```python
     def search(self, key):
         current = self.head
         while current:
             if current.data == key:
                 return True
             current = current.next
         return False
     ```

5. **Reverse**:
   - **Reversing** a linked list involves changing the direction of the pointers so that the list is traversed in the opposite order.
   - **Example**:
     ```python
     def reverse(self):
         prev = None
         current = self.head
         while current:
             next_node = current.next
             current.next = prev
             prev = current
             current = next_node
         self.head = prev
     ```

---

### Time Complexity of Operations:

- **Insertion**: 
  - At the beginning: `O(1)`
  - At the end: `O(n)` if the list is singly linked and you need to traverse to the end; `O(1)` if the list maintains a reference to the tail.
  
- **Deletion**:
  - From the beginning: `O(1)`
  - From the end: `O(n)` (for singly linked lists) since you have to traverse the list to find the second-to-last node.

- **Traversal/Search**: `O(n)` where `n` is the number of nodes in the list.

- **Reversing**: `O(n)` as it involves a single pass through the list to reverse the pointers.

---

### Advantages of Linked Lists:

1. **Dynamic Size**:
   - Linked lists are dynamic and can easily grow or shrink in size, unlike arrays, which require resizing when their capacity is exceeded.

2. **Efficient Insertion/Deletion**:
   - Inserting or deleting elements at the beginning or middle of a linked list is efficient (`O(1)` for insertion at the head), as no shifting of elements is required (unlike arrays).

3. **No Pre-allocation of Memory**:
   - Linked lists do not require pre-allocation of memory, making them more memory-efficient than arrays when the exact size of the data structure is unknown.

---

### Disadvantages of Linked Lists:

1. **No Direct Access**:
   - Linked lists do not allow direct access to elements. To access an element at a specific index, you must traverse the list, resulting in a time complexity of `O(n)`.

2. **Higher Memory Overhead**:
   - Each node in a linked list requires extra memory for storing a reference to the next (and previous, in the case of doubly linked lists) node.

3. **Poor Cache Performance**:
   - Unlike arrays, linked lists do not have good cache locality. This means that accessing elements in linked lists may be slower because they are scattered in memory, rather than being stored contiguously.

---

### Applications of Linked Lists:

1. **Dynamic Memory Management**:
   - Linked lists are useful in scenarios where the size of the data structure is not known in advance and needs to grow or shrink dynamically.

2. **Implementing Stacks and Queues**:
   - Linked lists are commonly used to implement **stacks** and **queues** because of their efficient insertion and deletion operations.

3. **Polynomial Arithmetic**:
   - Linked lists are used to represent polynomials, where each node contains the coefficient and exponent of each term. This allows for easy insertion, deletion, and manipulation of polynomial terms.

4. **Hash Tables with Chaining**:
   - In **hash tables**, linked lists are used in collision resolution with **chaining**. Each bucket in the hash table can be a linked list of key-value pairs that hash to the same index.

---

### Example of Singly Linked List Implementation in Python:

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def insert_at_beginning(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node

    def insert_at_end(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
        else:
            last = self.head
            while last.next:
                last = last.next
            last.next = new_node

    def traverse(self):
        current = self.head
        while current:
            print(current.data, end=' -> ')
            current = current.next
        print("None")

# Usage
ll = LinkedList()
ll.insert_at_beginning(10)
ll.insert_at_beginning(20)
ll.insert_at_end(30)
ll.traverse()  # Output: 20 -> 10 -> 30 -> None
```

---

### Real-World Analogy:
- A **Linked List** is like a **chain of people holding hands**:
   - Each person (node) holds hands with the next person in line, creating a chain (linked list). If you want to add someone to the front or remove someone from the middle, you simply adjust who holds hands with whom, without needing to shift everyone else.

---

### Related Concepts:
- [[Array]]: Unlike arrays, linked lists allow dynamic memory allocation and efficient insertion and deletion.
- [[Hash Table]]: Linked lists are used to handle collisions in hash tables through chaining.
- [[Stack]]: A linked list can be used to implement a stack, where elements are added and removed from the top.

**Linked Lists** are versatile data structures that offer dynamic memory allocation and efficient insertion and deletion. They are particularly useful in applications where the size of the data structure is unknown or frequently changing. However, they come with trade-offs in terms of access time and memory overhead.
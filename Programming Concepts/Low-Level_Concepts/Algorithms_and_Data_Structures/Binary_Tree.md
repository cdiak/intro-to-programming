## Binary Tree

- A **Binary Tree** is a hierarchical data structure in which each node has at most **two children**, referred to as the **left child** and the **right child**. Binary trees are widely used in computer science for tasks such as searching, sorting, and representing hierarchical data like file systems or organizational structures.

### Key Idea:
- A **Binary Tree** consists of nodes where each node contains:
  - **Data**: The value stored in the node.
  - **Left Child**: A reference to the left child node (which may be `null` if there is no child).
  - **Right Child**: A reference to the right child node (which may be `null` if there is no child).

---

### Components of a Binary Tree:

1. **Node**:
   - A **Node** is the fundamental building block of a binary tree. It contains a value (data) and pointers to its left and right children.
   - **Example**: A node with value `5` can have a left child with value `3` and a right child with value `7`.

2. **Root**:
   - The **Root** is the topmost node of the binary tree. All other nodes are descendants of the root.
   - **Example**: In a tree with the root value `10`, all other nodes branch from this root.

3. **Left Subtree**:
   - The **Left Subtree** is the tree formed by the left child of the root and all its descendants.

4. **Right Subtree**:
   - The **Right Subtree** is the tree formed by the right child of the root and all its descendants.

5. **Leaf Node**:
   - A **Leaf Node** is a node that has no children, meaning both its left and right child references are `null`.

6. **Parent Node**:
   - A **Parent Node** is a node that has one or more child nodes.

7. **Height**:
   - The **Height** of a tree is the number of edges on the longest path from the root to a leaf. A single node tree has a height of `0`.

8. **Depth**:
   - The **Depth** of a node is the number of edges from the root to the node. The depth of the root is `0`.

---

### Types of Binary Trees:

1. **Full Binary Tree**:
   - A **Full Binary Tree** is a tree in which every node has either 0 or 2 children. No node has only one child.
   - **Example**:
     ```
         1
        / \
       2   3
      / \
     4   5
     ```

2. **Perfect Binary Tree**:
   - A **Perfect Binary Tree** is a full binary tree in which all internal nodes have two children, and all leaf nodes are at the same level.
   - **Example**:
     ```
         1
        / \
       2   3
      / \ / \
     4  5 6  7
     ```

3. **Complete Binary Tree**:
   - A **Complete Binary Tree** is a binary tree in which all levels are completely filled except possibly the last level, and all nodes are as far left as possible.
   - **Example**:
     ```
         1
        / \
       2   3
      / \  /
     4  5 6
     ```

4. **Balanced Binary Tree**:
   - A **Balanced Binary Tree** is a tree where the height of the left and right subtrees of any node differ by no more than one.
   - **Example**:
     ```
         1
        / \
       2   3
      /
     4
     ```

5. **Degenerate (or Pathological) Binary Tree**:
   - A **Degenerate Binary Tree** is a tree where each parent node has only one child. This type of tree resembles a linked list.
   - **Example**:
     ```
     1
      \
       2
        \
         3
     ```

---

### Binary Tree Traversal:

Traversal is the process of visiting each node in a tree in a specific order. There are three common ways to traverse a binary tree:

1. **In-order Traversal (Left, Root, Right)**:
   - Visit the left subtree, then the root node, and finally the right subtree.
   - **Example**:
     ```python
     def in_order_traversal(root):
         if root:
             in_order_traversal(root.left)
             print(root.data, end=' ')
             in_order_traversal(root.right)
     ```

   - **Output** for tree:  
     ```
         1
        / \
       2   3
      / \
     4   5
     ```
   - In-order Traversal Output: `4 2 5 1 3`

2. **Pre-order Traversal (Root, Left, Right)**:
   - Visit the root node, then the left subtree, and finally the right subtree.
   - **Example**:
     ```python
     def pre_order_traversal(root):
         if root:
             print(root.data, end=' ')
             pre_order_traversal(root.left)
             pre_order_traversal(root.right)
     ```

   - **Output** for tree:
     ```
         1
        / \
       2   3
      / \
     4   5
     ```
   - Pre-order Traversal Output: `1 2 4 5 3`

3. **Post-order Traversal (Left, Right, Root)**:
   - Visit the left subtree, then the right subtree, and finally the root node.
   - **Example**:
     ```python
     def post_order_traversal(root):
         if root:
             post_order_traversal(root.left)
             post_order_traversal(root.right)
             print(root.data, end=' ')
     ```

   - **Output** for tree:
     ```
         1
        / \
       2   3
      / \
     4   5
     ```
   - Post-order Traversal Output: `4 5 2 3 1`

4. **Level-order Traversal (Breadth-First Traversal)**:
   - Visit all nodes level by level from left to right.
   - **Example**:
     ```python
     from collections import deque

     def level_order_traversal(root):
         if not root:
             return
         queue = deque([root])
         while queue:
             node = queue.popleft()
             print(node.data, end=' ')
             if node.left:
                 queue.append(node.left)
             if node.right:
                 queue.append(node.right)
     ```

   - **Output** for tree:
     ```
         1
        / \
       2   3
      / \
     4   5
     ```
   - Level-order Traversal Output: `1 2 3 4 5`

---

### Binary Search Tree (BST):

A **Binary Search Tree (BST)** is a special type of binary tree where the left child contains only nodes with values **less than** the parent node, and the right child contains only nodes with values **greater than** the parent node. This property makes search operations more efficient.

- **Example of BST**:
  ```
      5
     / \
    3   7
   / \   \
  2   4   8
  ```

- **BST Operations**:
  - **Search**: Efficiently find a value in the tree by comparing the target value with the current node and traversing left or right as needed.
  - **Insert**: Add a new node by traversing the tree and finding the correct position based on the BST property.
  - **Delete**: Remove a node from the tree while maintaining the BST property. This is more complex and involves handling three cases: the node to be deleted is a leaf, has one child, or has two children.

---

### Example of a Binary Tree Implementation in Python:

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

class BinaryTree:
    def __init__(self):
        self.root = None

    def insert(self, data):
        if self.root is None:
            self.root = Node(data)
        else:
            self._insert(self.root, data)

    def _insert(self, node, data):
        if data < node.data:
            if node.left is None:
                node.left = Node(data)
            else:
                self._insert(node.left, data)
        else:
            if node.right is None:
                node.right = Node(data)
            else:
                self._insert(node.right, data)

    def in_order(self, node):
        if node:
            self.in_order(node.left)
            print(node.data, end=' ')
            self.in_order(node.right)

# Usage Example
tree = BinaryTree()
tree.insert(5)
tree.insert(3)
tree.insert(7)
tree.insert(2)
tree.insert(4)

# In-order Traversal
tree.in_order(tree.root)  # Outputs: 2 3 4 5 7
```

---

### Applications of Binary Trees:

1. **Binary Search Trees (BST)**:
   - Efficiently search, insert, and delete values. Operations are faster than arrays or linked lists in the average case (`O(log n)` time complexity).

2. **Heap**:
   - A **Heap** is a specialized tree-based data structure that satisfies the **heap property**. It is often used in priority queues and sorting algorithms like **Heap Sort**.

3. **Expression Trees**:
   - Used in compilers to represent arithmetic expressions. Leaf nodes are operands, and internal nodes are operators.

4. **File Systems**:
   - Hierarchical file systems use a tree structure to represent directories and files.

5. **Huffman Coding Tree**:
   - Used in data compression algorithms like **Huffman Encoding** to represent prefix codes efficiently.

---

### Real-World Analogy:
- A **Binary Tree** is like a **family tree**:
   - Each person (node) has a parent (the node above) and possibly two children (the left and right nodes). The structure is hierarchical, where you start at the root (ancestor) and work your way down through each branch (subtree).

---

### Related Concepts:
- [[Graph]]: Binary trees are a type of graph where each node has at most two children.
- [[Heap]]: A binary tree-based data structure where the parent node is always greater (or smaller) than its children.
- [[Binary Search Tree (BST)]]: A binary tree that maintains sorted order.

**Binary Trees** are versatile data structures with wide-ranging applications in algorithms, searching, and hierarchical data representation. Their simple yet powerful structure allows for efficient operations like searching, inserting, and deleting values.
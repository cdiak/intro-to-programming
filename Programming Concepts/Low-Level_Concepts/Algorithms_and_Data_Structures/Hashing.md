## Hashing

- **Hashing** is a technique used to map data of arbitrary size to a fixed-size value, typically for fast data retrieval, insertion, and deletion. The fixed-size value is called a **hash code** or **hash value**, and it is generated using a **hash function**. Hashing is widely used in data structures like hash tables, cryptography, and databases.

### Key Idea:
- **Hashing** is used to convert input data (called a **key**) into a fixed-size hash value that can be used to index a collection (such as a hash table) quickly. The goal of hashing is to provide efficient data lookups in constant time, typically `O(1)`.

---

### Hash Function:

1. **Definition**:
   - A **Hash Function** takes an input (or **key**) and returns a fixed-size integer, typically used as an index in an array or hash table.
   - **Notation**: `h(key) = hash_value`
   - **Example**: If the key is "Alice", a hash function might map it to the index `h("Alice") = 42`.

2. **Properties of a Good Hash Function**:
   - **Deterministic**: The same input should always produce the same hash value.
   - **Uniformity**: Hash values should be distributed uniformly across the hash table to avoid clustering.
   - **Efficient**: The function should compute the hash quickly.
   - **Minimize Collisions**: Different keys should ideally map to different hash values to avoid collisions.

3. **Examples of Hash Functions**:
   - **Simple Modulo Hashing**: A common approach is to use the remainder of the division of a key by the size of the hash table.
     ```python
     def simple_hash(key, size):
         return key % size
     ```

   - **String Hashing**: Hashing algorithms for strings often involve multiplying the ASCII values of the characters by powers of a base number.
     ```python
     def string_hash(s, size):
         hash_value = 0
         for char in s:
             hash_value = (hash_value * 31 + ord(char)) % size
         return hash_value
     ```

---

### Hash Table:

1. **Definition**:
   - A **Hash Table** is a data structure that uses hashing to map keys to values. It stores key-value pairs, where the key is hashed to produce an index, and the value is stored at that index in an array.

2. **Basic Operations in Hash Tables**:
   - **Insert**: Hash the key to get an index and store the value at that index.
   - **Search**: Hash the key to get the index and retrieve the value from that index.
   - **Delete**: Hash the key to find the index and remove the value from that index.

3. **Example of a Hash Table** (with integer keys):
   ```python
   class HashTable:
       def __init__(self, size):
           self.size = size
           self.table = [None] * size

       def insert(self, key, value):
           index = key % self.size  # Simple hash function
           self.table[index] = value

       def search(self, key):
           index = key % self.size
           return self.table[index]

   # Usage
   ht = HashTable(10)
   ht.insert(15, "Alice")
   print(ht.search(15))  # Outputs: Alice
   ```

---

### Hash Collisions:

1. **Definition**:
   - A **Collision** occurs when two different keys hash to the same index in a hash table. This can happen because the number of possible keys may be much larger than the number of available indices in the hash table.

2. **Collision Resolution Techniques**:

   - **Chaining**:
     - In **Chaining**, each index of the hash table contains a linked list (or another data structure) of all key-value pairs that hash to the same index. When a collision occurs, the new key-value pair is added to the list at the hashed index.
     - **Example**:
       ```python
       class HashTable:
           def __init__(self, size):
               self.size = size
               self.table = [[] for _ in range(size)]

           def insert(self, key, value):
               index = key % self.size
               self.table[index].append((key, value))

           def search(self, key):
               index = key % self.size
               for k, v in self.table[index]:
                   if k == key:
                       return v
               return None
       ```

   - **Open Addressing**:
     - In **Open Addressing**, when a collision occurs, the algorithm searches for the next available slot in the array using a probing method.
     - **Linear Probing**: Searches for the next available slot in a linear sequence.
     - **Quadratic Probing**: Searches for available slots by checking positions according to a quadratic function (e.g., `index + i^2`).
     - **Double Hashing**: Uses a second hash function to determine the step size for finding an available slot.

3. **Example of Linear Probing**:
   ```python
   class HashTable:
       def __init__(self, size):
           self.size = size
           self.table = [None] * size

       def insert(self, key, value):
           index = key % self.size
           while self.table[index] is not None:
               index = (index + 1) % self.size  # Linear probing
           self.table[index] = value

       def search(self, key):
           index = key % self.size
           while self.table[index] is not None:
               return self.table[index]
   ```

---

### Hashing in Cryptography:

1. **Cryptographic Hash Functions**:
   - Cryptographic hash functions are used to ensure data integrity and security. They take an input (or "message") and return a fixed-size hash value, which is unique for different inputs (with a high probability). A good cryptographic hash function is **collision-resistant**, meaning it is computationally infeasible to find two different inputs that produce the same hash value.
   - **Examples**:
     - **SHA-256 (Secure Hash Algorithm)**: Produces a 256-bit hash value.
     - **MD5 (Message Digest Algorithm 5)**: Produces a 128-bit hash value (though it is now considered insecure due to vulnerabilities).

2. **Applications of Cryptographic Hash Functions**:
   - **Password Hashing**: Hash functions are used to store passwords securely. When a user enters a password, the hash is calculated and compared to the stored hash.
   - **Data Integrity**: Hashes are used to verify that data has not been altered. By comparing the hash of the original data to the hash of the received data, one can detect changes.
   - **Digital Signatures**: Hash functions are used in conjunction with public-key cryptography to verify the authenticity of messages or documents.

---

### Applications of Hashing:

1. **Hash Tables**:
   - Hashing is most commonly used in **hash tables** for fast lookups, insertions, and deletions. It is the backbone of dictionaries or maps in many programming languages.

2. **Database Indexing**:
   - Hashing is used in databases to index data for fast retrieval. It allows for constant-time access to records based on a key, improving query performance.

3. **Checksum and Data Integrity**:
   - Hash functions are used to generate **checksums**, which help verify the integrity of data during transmission or storage. If the data changes, the checksum will change as well.

4. **Load Balancing**:
   - Hashing is used in distributed systems for **load balancing**, where data or tasks are assigned to different servers or processors. The hash function helps distribute the load evenly across nodes.

5. **Caching**:
   - Hash functions are used in caching mechanisms (like **LRU caches**) to map data keys to cache entries, allowing for efficient cache lookups.

6. **Bloom Filters**:
   - **Bloom Filters** are probabilistic data structures that use multiple hash functions to check whether an element is part of a set. Bloom filters are space-efficient but may give false positives.

---

### Advantages of Hashing:

1. **Constant Time Lookup**:
   - Hashing allows for **constant time (`O(1)`)** average-case lookups, making it highly efficient for data retrieval, insertion, and deletion.

2. **Efficient Memory Usage**:
   - With a good hash function and proper collision resolution, hashing can use memory efficiently without needing a lot of extra space.

3. **Flexibility**:
   - Hashing can be applied to many types of data, such as integers, strings, and even complex objects. By using different hash functions, it can be adapted to various needs.

---

### Disadvantages of Hashing:

1. **Collisions**:
   - Hashing cannot guarantee unique hash values for every possible input. **Collisions** occur when two different keys hash to the same index, which can degrade performance if not handled properly.

2. **Hash Function Quality**:
   - The performance of a hash-based system depends heavily on the quality of the hash function. Poorly distributed hash functions can lead to clustering and reduce efficiency.

3. **Space Overhead**:
   - Hash tables require extra space for storing both keys and values, and handling collisions may require additional data structures, like linked lists in chaining.

---

### Real-World Analogy:
- **Hashing** is like organizing books in a library:
   - Imagine you have thousands of books and want to find one quickly. Instead of checking every shelf, you use the book's title to compute a **shelf number** (using a hash function) where it should be placed or found. If two books are supposed to go on the same shelf (collision), you need a strategy (chaining or probing) to handle that.

---

### Related Concepts:
- [[Hash Table]]: A data structure that uses hashing for fast data retrieval.
- [[Graph]]: Hashing is often used to map graph nodes or edges for quick access in graph algorithms.
- [[Cryptography]]: Hash functions are essential for secure communications and data integrity in cryptographic systems.

**Hashing** is a powerful technique for efficiently organizing and accessing data, making it crucial in areas such as data structures, cryptography, and databases. When applied correctly with a good hash function and proper collision resolution, hashing can provide constant-time performance for many operations.
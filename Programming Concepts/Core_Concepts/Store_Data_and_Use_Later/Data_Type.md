## Data Type

- A **Data Type** is a classification that specifies the type of data a variable can hold in a programming language. Data types determine the operations that can be performed on the data and how the data is stored in memory.
- Every variable in a program must have a data type, whether it's a simple type like an integer or a more complex type like a class or an array.

### Key Idea:
- **Data Types** ensure that data is stored in a predictable way and can be operated on correctly. Each data type has specific rules for the kind of values it can hold and the operations that can be performed on it.

---

### Categories of Data Types:

1. **Primitive Data Types**:
   - **Primitive data types** are basic data types provided by a programming language. They are typically predefined and stored directly in memory.
   - Examples: `int`, `float`, `char`, `boolean`.

2. **Composite (Non-Primitive) Data Types**:
   - **Composite data types** are derived from primitive types and can hold collections of values or more complex structures.
   - Examples: `array`, `list`, `tuple`, `struct`, `class`.

3. **Abstract Data Types (ADTs)**:
   - **Abstract data types** are higher-level data types defined by the programmer, where only the behavior of the data is exposed, not the implementation.
   - Examples: `stack`, `queue`, `map`, `tree`.

---

### Primitive Data Types:

1. **Integer** (`int`):
   - Represents whole numbers, positive or negative, without a fractional component.
   - **Example**: `int age = 30;`  (Java)
   - **Size**: The size of an integer can vary across languages (e.g., 32 bits in Java or Python).

2. **Floating-Point** (`float`, `double`):
   - Represents real numbers that include a decimal point (fractional component).
   - **Example**: `float temperature = 36.6;`  (Java)
   - **Precision**: `float` has single precision (32 bits), while `double` has double precision (64 bits).

3. **Character** (`char`):
   - Represents a single character.
   - **Example**: `char initial = 'A';`  (Java)
   - **Size**: Usually occupies 16 bits in Unicode encoding (Java).

4. **Boolean** (`boolean`):
   - Represents a value that is either `true` or `false`.
   - **Example**: `boolean isLoggedIn = true;`  (Java)

5. **String**:
   - Represents a sequence of characters. Technically, a string is an object in most languages, but some treat it as a primitive data type.
   - **Example**: `String name = "Alice";`  (Java)

---

### Composite Data Types:

1. **Array**:
   - Represents a collection of elements of the same type, stored in contiguous memory locations.
   - **Example**: `int[] numbers = {1, 2, 3, 4};`  (Java)

2. **List**:
   - A dynamic data structure that can grow and shrink in size. Lists can contain elements of the same or different types.
   - **Example**: `List<Integer> numbers = new ArrayList<>();`  (Java)

3. **Tuple**:
   - A fixed-size collection of elements of different types (in languages like Python).
   - **Example**: `tuple = (1, "Alice", True)`  (Python)

4. **Struct**:
   - A composite data type used to group different types of data under one name (common in C/C++).
   - **Example**: 
     ```cpp
     struct Person {
         int age;
         char name[50];
     };
     ```

5. **Class**:
   - A user-defined data type that represents a blueprint for objects, encapsulating data and methods.
   - **Example**: 
     ```java
     class Car {
         int speed;
         String model;
     }
     ```

---

### Abstract Data Types (ADTs):

1. **Stack**:
   - A data type that follows the **Last In, First Out (LIFO)** principle. Operations are performed only at one end of the structure (the "top").
   - **Example**: Stack operations like `push()`, `pop()`.

2. **Queue**:
   - A data type that follows the **First In, First Out (FIFO)** principle. Elements are added at the back and removed from the front.
   - **Example**: Queue operations like `enqueue()`, `dequeue()`.

3. **Map (Dictionary)**:
   - A collection of key-value pairs, where each key is unique and is used to retrieve the corresponding value.
   - **Example**: `Map<String, Integer> map = new HashMap<>();`  (Java)

---

### Examples of Data Types in Different Programming Languages:

#### **Java**:
```java
int age = 25;  // Integer
double salary = 50000.75;  // Floating-point
char initial = 'A';  // Character
boolean isLoggedIn = false;  // Boolean
String name = "Alice";  // String (object, but used as primitive)
```

#### **Python**:
```python
age = 25  # Integer
salary = 50000.75  # Float
initial = 'A'  # Character (represented as a string in Python)
is_logged_in = False  # Boolean
name = "Alice"  # String
```

#### **C++**:
```cpp
int age = 25;  // Integer
double salary = 50000.75;  // Floating-point
char initial = 'A';  // Character
bool isLoggedIn = false;  // Boolean
```

---

### Type Checking and Type Casting:

1. **Type Checking**:
   - **Type Checking** is the process of verifying that variables are of the correct data type. Some languages are **statically typed**, where type checking occurs at compile time (e.g., Java, C++), while others are **dynamically typed**, where types are checked at runtime (e.g., Python, JavaScript).

2. **Type Casting**:
   - **Type Casting** is the process of converting a value from one data type to another.
   - **Implicit Casting**: Automatically done by the language when no data is lost in the conversion (e.g., from `int` to `float`).
   - **Explicit Casting**: Done manually by the programmer when there is potential for data loss or to meet specific requirements (e.g., from `double` to `int`).

   **Example of Explicit Casting in Java**:
   ```java
   int age = (int) 25.75;  // Cast double to int
   ```

   **Example of Implicit Casting in Python**:
   ```python
   age = 25
   height = 1.75
   combined = age + height  # Implicitly casts 'age' to float
   ```

---

### Strongly Typed vs Weakly Typed Languages:

1. **Strongly Typed Languages**:
   - A strongly typed language requires variables to strictly adhere to their data type. Operations between different types usually require explicit type casting.
   - **Examples**: Java, Python, C++.

2. **Weakly Typed Languages**:
   - A weakly typed language allows for more flexibility when working with different data types. Implicit conversions between types are more common.
   - **Examples**: JavaScript, PHP.

---

### Advantages of Data Types:

1. **Memory Management**:
   - Data types help the compiler allocate the correct amount of memory for each variable. This ensures efficient use of memory.

2. **Type Safety**:
   - Using data types ensures **type safety**, meaning the compiler can catch errors like trying to store a string in an integer variable.

3. **Performance Optimization**:
   - Knowing the data type allows the compiler or interpreter to optimize operations for that specific type, improving performance.

4. **Readability**:
   - Clearly defined data types make the code easier to understand, as other developers can quickly identify the purpose of each variable.

---

### Disadvantages of Data Types:

1. **Restrictions**:
   - In statically typed languages, you must declare the data type in advance, which can be restrictive when you need flexibility.
   
2. **Type Errors**:
   - Type mismatch errors can occur when trying to assign values of one data type to a variable of a different data type. This can lead to bugs or crashes if not handled properly.

---

### Real-World Analogy:
- A **Data Type** is like a **container**:
   - Imagine a series of containers, each designed to hold a specific type of item. A jar might hold coffee beans (integers), while a bottle holds water (floating-point numbers). Just as you wouldn't store water in a jar designed for beans, variables in programming need to store data in appropriate types.

---

### Related Concepts:
- [[Variable]]: A storage location that holds data. Each variable has a data type that defines the kind of data it can store.
- [[Array]]: A data structure that holds a collection of elements of the same data type.
- [[Casting]]: The process of converting a variable from one data type to another.

**Data Types** are fundamental to programming, allowing us to define the kind of data variables can hold, ensuring efficient memory usage, and maintaining code clarity. Understanding data types is crucial for writing robust, efficient, and error-free programs.
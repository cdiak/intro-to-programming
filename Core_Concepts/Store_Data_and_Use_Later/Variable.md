## Variable

- A **Variable** is a symbolic name associated with a value and used to store data in a program. Variables act as containers that hold information, which can be changed or referenced throughout the program's execution. Each variable is assigned a specific **data type**, which determines what kind of data it can store (e.g., integers, strings, floating-point numbers).
  
### Key Idea:
- A **Variable** allows a programmer to store data for later use. It provides a way to label and reference information in memory, making the program dynamic and flexible. Variables are typically declared with a **name** and a **value**.

---

### Components of a Variable:

1. **Variable Name**:
   - The **name** of a variable is a symbolic identifier used to reference the value stored in memory. The variable name must follow certain naming conventions and cannot be a reserved keyword in the programming language.
   - **Example**: `age`, `total_price`, `userName`.

2. **Value**:
   - The **value** of a variable is the data it holds. This can be any type of data, such as a number, string, or object. The value of a variable can be reassigned during program execution.
   - **Example**: A variable `age` might hold the value `30`.

3. **Data Type**:
   - The **data type** defines the kind of data a variable can store. For example, an integer variable holds whole numbers, while a string variable holds text.
   - **Example**: `int`, `float`, `string`, `boolean`.

4. **Memory Location**:
   - Every variable is stored at a specific **memory location** in the system’s RAM. The memory address is not directly referenced by the programmer, but it’s used by the system to retrieve the variable’s value.

---

### Declaring and Initializing Variables:

1. **Declaration**:
   - A **variable declaration** defines a variable by giving it a name and a data type (in statically typed languages). In dynamically typed languages, the data type is inferred.
   - **Example (Java)**:
     ```java
     int age;  // Declaring a variable of type int
     ```

2. **Initialization**:
   - **Initialization** assigns an initial value to the variable when it is declared.
   - **Example (Python)**:
     ```python
     age = 25  # Initializing a variable with a value of 25
     ```

3. **Assignment**:
   - After a variable is declared, its value can be **assigned** or updated using the assignment operator (`=`).
   - **Example (Java)**:
     ```java
     int age = 30;  // Declaration and initialization
     age = 31;  // Reassigning a new value to the variable
     ```

---

### Variable Naming Rules:

1. **Must start with a letter or underscore**:
   - Variable names cannot begin with a digit. They must start with a letter (A-Z, a-z) or an underscore (`_`).
   - **Example**: `age`, `_counter`, `totalAmount`.

2. **Cannot contain spaces**:
   - Variable names cannot include spaces. Use underscores (`_`) or camel case (`totalAmount`) to separate words.
   - **Example**: `totalAmount` or `total_amount`.

3. **Case-sensitive**:
   - Most programming languages treat variable names as **case-sensitive**, meaning `age` and `Age` are two different variables.
   - **Example**: `userName` is different from `username`.

4. **Cannot use reserved keywords**:
   - Variable names cannot be reserved keywords in the programming language (e.g., `class`, `if`, `while`).
   - **Example**: You cannot name a variable `class` in Java.

---

### Types of Variables:

1. **Local Variables**:
   - **Local Variables** are declared within a function or block and can only be accessed within that function or block. Once the function exits, the variable is destroyed.
   - **Example**:
     ```python
     def my_function():
         local_var = 10  # Local variable
         print(local_var)

     my_function()  # Outputs: 10
     print(local_var)  # Error: local_var is not accessible here
     ```

2. **Global Variables**:
   - **Global Variables** are declared outside of any function and can be accessed from anywhere in the program. However, excessive use of global variables can make debugging harder.
   - **Example**:
     ```python
     global_var = 20  # Global variable

     def my_function():
         print(global_var)

     my_function()  # Outputs: 20
     ```

3. **Instance Variables (Object-Oriented Programming)**:
   - **Instance Variables** are variables associated with an object and are specific to each instance of a class.
   - **Example (Python)**:
     ```python
     class Car:
         def __init__(self, make, model):
             self.make = make  # Instance variable
             self.model = model  # Instance variable

     car1 = Car("Toyota", "Corolla")
     car2 = Car("Honda", "Civic")
     print(car1.make)  # Outputs: Toyota
     print(car2.make)  # Outputs: Honda
     ```

4. **Class Variables (Object-Oriented Programming)**:
   - **Class Variables** are shared among all instances of a class. They belong to the class itself rather than any specific instance.
   - **Example (Python)**:
     ```python
     class Car:
         wheels = 4  # Class variable

     car1 = Car()
     car2 = Car()
     print(car1.wheels)  # Outputs: 4
     print(car2.wheels)  # Outputs: 4
     ```

---

### Variable Scope:

1. **Scope** refers to the region of the program where a variable can be accessed.
   - **Local Scope**: A variable declared inside a function or block has local scope and can only be accessed within that function.
   - **Global Scope**: A variable declared outside of all functions has global scope and can be accessed from any part of the program.

2. **Example of Variable Scope in Python**:
   ```python
   global_var = 100  # Global variable

   def my_function():
       local_var = 50  # Local variable
       print(local_var)  # Outputs: 50
       print(global_var)  # Outputs: 100

   my_function()
   print(global_var)  # Outputs: 100
   # print(local_var)  # Error: local_var is not accessible here
   ```

---

### Types of Variables in Different Programming Languages:

#### **Python**:
- In Python, variables are dynamically typed, meaning the type is inferred based on the value assigned to the variable.
```python
age = 25  # The variable 'age' is dynamically typed as an integer
name = "Alice"  # The variable 'name' is dynamically typed as a string
```

#### **Java**:
- In Java, variables are statically typed, meaning their type must be declared explicitly when the variable is defined.
```java
int age = 25;  // The variable 'age' is statically typed as an integer
String name = "Alice";  // The variable 'name' is statically typed as a string
```

#### **C++**:
- Similar to Java, variables in C++ are statically typed, meaning the type must be declared at the time of declaration.
```cpp
int age = 25;  // Integer variable
string name = "Alice";  // String variable (requires including <string> library)
```

---

### Constants vs. Variables:

1. **Constant**:
   - A **constant** is a variable whose value cannot be changed once it has been assigned. Constants are often used to represent values that do not change throughout the program’s execution.
   - **Example in Java**:
     ```java
     final int MAX_SIZE = 100;  // A constant in Java, cannot be reassigned
     ```

2. **Variable**:
   - A **variable**, in contrast to a constant, can have its value changed during program execution.
   - **Example**:
     ```java
     int size = 50;
     size = 60;  // Variable value updated
     ```

---

### Memory Management and Variables:

1. **Heap vs. Stack**:
   - Variables are stored in memory, either on the **stack** or the **heap**.
   - **Stack Memory** is used for local variables, and it is automatically managed, meaning variables are destroyed when they go out of scope.
   - **Heap Memory** is used for dynamically allocated variables (like objects or arrays), and it must be managed manually in some languages (like C++) or through garbage collection in others (like Java and Python).

2. **Garbage Collection**:
   - In languages like Python and Java, unused variables or objects are automatically cleaned up through **garbage collection** to free memory.

---

### Common Variable Errors:

1. **Uninitialized Variable**:
   - If a variable is declared but not initialized before use, it may result in unpredictable behavior or errors.
   - **Example** (C++):
     ```cpp
     int age;  // Declared but not initialized
     cout << age;  // This could print garbage value
     ```

2. **Type Mismatch**:
   - Trying to assign a value to a variable that does not match its declared data type can cause type mismatch errors in statically typed languages.
   - **Example** (Java):
     ```java
     int age = "twenty";  // Error: incompatible types
     ```

---

### Real-World Analogy:
- A **Variable** is like a **labeled storage box**:
   - Imagine you have a set of labeled boxes in which you can store various items (data). Each box has a name (the variable name), and inside the box is the item (the value). You can replace the item in the box (reassign the variable) but always reference the box by its label.

---

### Related Concepts:
- [[Data Type]]: The type of data that can be stored in a variable, such as `int`, `float`, or `string`.
- [[Memory]]: The storage location where variables are kept during program execution, either in the stack or heap.

**Variables** are one of the most fundamental building blocks of programming, providing a way to store, manipulate, and retrieve data dynamically. They make programs flexible and adaptable by allowing values to be stored and referenced by name throughout the program's execution. Proper understanding and usage of variables are key to writing efficient and effective code.
## Encapsulation

- **Encapsulation** is another core principle of [[object-oriented programming]] (OOP) that refers to the bundling of data and methods that operate on that data within a single unit, usually a [[Class]].
- It also involves **restricting direct access** to some of an object’s components, which is a way of preventing unintended interference or misuse of the internal workings of that object.

### Key Idea:
- Encapsulation ensures that an object’s internal state (its data) is **hidden** from outside interference and is only accessible through well-defined interfaces (methods).
- This concept allows developers to **protect** and manage the internal state of an object by providing controlled access via public methods while keeping the actual implementation details private.

### Benefits of Encapsulation:
1. **Data Protection**:
   - By hiding the internal data (using private access modifiers), encapsulation prevents other parts of the program from directly altering the object’s state, which could lead to inconsistencies.
   - **Example**: In a banking application, you might have a `BankAccount` class with a private `balance` variable. The balance can only be modified using the `deposit()` or `withdraw()` methods, ensuring that only valid operations affect the balance.

2. **Controlled Access**:
   - Encapsulation provides a way to **control** how the internal data is accessed or modified by exposing **getter** and **setter** methods.
   - **Example**: A `getBalance()` method might allow read access to the balance, while a `setBalance()` method could allow changes, but only if the value is valid.

3. **Modularity**:
   - Encapsulation helps keep a system modular, meaning that you can change one part of the program (the internal workings of a class) without affecting other parts.
   - **Example**: If you modify how the balance is calculated or stored in a `BankAccount`, the external code using the `BankAccount` class doesn’t need to change, as it interacts with the class through the public methods.

### How Encapsulation Works:
1. **Private and Public Access Modifiers**:
   - In languages like [[Java]], [[C++]], and others, encapsulation is often implemented using **access modifiers**:
     - **Private**: The data or method is hidden from outside the class and can only be accessed within the class itself.
     - **Public**: The data or method is exposed to the outside world and can be accessed from outside the class.
   - **Example**:
     ```java
     public class BankAccount {
         private double balance;  // Encapsulated field

         public double getBalance() {
             return balance;  // Public getter for controlled access
         }

         public void deposit(double amount) {
             if (amount > 0) {
                 balance += amount;
             }
         }

         public void withdraw(double amount) {
             if (amount > 0 && amount <= balance) {
                 balance -= amount;
             }
         }
     }
     ```

2. **Getter and Setter Methods**:
   - **Getters**: Methods that retrieve the value of a private variable.
   - **Setters**: Methods that allow controlled modification of a private variable.
   - These methods provide an abstraction layer between the internal data and how external classes interact with it.

### Benefits in Large Systems:
- **Code Maintenance**: Encapsulation makes code easier to maintain because it allows developers to change the internal implementation of a class without modifying code that uses the class.
- **Security**: By limiting access to certain parts of an object, you can protect the object from unintended misuse, ensuring that only valid operations are performed on its data.

### Example: Real-World Analogy
- Think of a **TV remote**. You interact with it by pressing buttons (public methods) without needing to know how the internal circuits and components work (private data and methods). The internal details are **encapsulated** to ensure the remote functions as expected while offering a simple interface.

### Related Concepts:
- [[Abstraction]]: Encapsulation often works with abstraction. While abstraction hides the complexity, encapsulation hides the object’s internal state.
- [[Polymorphism]]: Encapsulation allows different implementations of an object’s behavior, while polymorphism allows those behaviors to be used interchangeably.
- [[Inheritance]]: Encapsulated data and methods in a base class can be inherited by derived classes while maintaining data protection.

Encapsulation is fundamental to building secure, maintainable, and flexible software, enabling developers to create clean interfaces for their objects while safeguarding the integrity of their internal state.
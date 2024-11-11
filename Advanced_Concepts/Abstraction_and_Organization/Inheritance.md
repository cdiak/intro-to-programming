## Inheritance

- **Inheritance** is a key concept in **object-oriented programming (OOP)** that allows one class (the **child** or **subclass**) to inherit properties and behaviors (fields and methods) from another class (the **parent** or **superclass**). This promotes code reuse and establishes a natural hierarchy between classes.

### Key Idea:
- Inheritance allows developers to create **new classes** based on existing ones. The child class inherits the attributes and methods of the parent class but can also have its own unique features or **override** parent class methods.

### Example of Inheritance:

1. **Parent Class**:
   - The parent class defines common properties and methods that other classes can inherit.
   ```java
   public class Animal {
       public void eat() {
           System.out.println("This animal is eating.");
       }
   }
   ```

2. **Child Class**:
   - The child class inherits the properties and methods of the parent class and can also add its own functionality.
   ```java
   public class Dog extends Animal {
       public void bark() {
           System.out.println("The dog is barking.");
       }
   }
   ```

   **Usage**:
   ```java
   Dog myDog = new Dog();
   myDog.eat();  // Inherited from Animal class
   myDog.bark(); // Specific to Dog class
   ```

In this example, the `Dog` class inherits the `eat` method from the `Animal` class and can also define its own `bark` method.

---

### Benefits of Inheritance:

1. **Code Reusability**:
   - By inheriting properties and methods from the parent class, the child class avoids duplicating code. This promotes the **DRY Principle** (Don’t Repeat Yourself).
   
2. **Maintainability**:
   - Changes made in the parent class automatically propagate to all child classes, simplifying maintenance and reducing the chance of errors.

3. **Hierarchy Representation**:
   - Inheritance naturally represents a **hierarchical relationship** between classes. For example, an `Employee` class can be a parent class, with specialized child classes such as `Manager` and `Developer`.

4. **Extensibility**:
   - Child classes can **extend** or **override** behaviors of the parent class to implement more specialized functionality.

---

### Types of Inheritance:

1. **Single Inheritance**:
   - A child class inherits from only one parent class.
   - **Example**: A `Car` class inherits from a `Vehicle` class.

2. **Multiple Inheritance** (not supported in some languages like Java):
   - A class can inherit from more than one parent class. This can create ambiguity and complexity, and languages like Java use **interfaces** to simulate multiple inheritance.
   
3. **Multilevel Inheritance**:
   - A chain of inheritance where a class inherits from another class, which itself inherits from a third class.
   - **Example**:
     ```java
     class Animal { }
     class Mammal extends Animal { }
     class Dog extends Mammal { }
     ```

4. **Hierarchical Inheritance**:
   - Multiple child classes inherit from the same parent class.
   - **Example**: A `Cat` and `Dog` class both inherit from the `Animal` class.

---

### Overriding and Super:

1. **Overriding**:
   - A child class can provide a **new implementation** of a method inherited from its parent class.
   - **Example**: A `Dog` class might override the `eat` method from the `Animal` class to provide a specific implementation.
     ```java
     @Override
     public void eat() {
         System.out.println("The dog is eating.");
     }
     ```

2. **Super** Keyword:
   - The `super` keyword is used to call a method or constructor from the parent class. This is useful when you want to build on the parent class's behavior.
   - **Example**:
     ```java
     public class Dog extends Animal {
         public void eat() {
             super.eat();  // Calls the eat method from Animal class
             System.out.println("The dog is eating kibble.");
         }
     }
     ```

---

### Real-World Analogy:
- **Inheritance** in programming is similar to **biological inheritance**. Just like children inherit traits from their parents (e.g., eye color), classes in programming inherit fields and methods from their parent classes. However, just as children can develop their own unique traits, child classes can extend or modify what they inherit.

---

### Common Pitfalls:
1. **Overusing Inheritance**:
   - Inheritance should only be used when there is a clear **"is-a"** relationship between the child and parent classes. Misusing inheritance can lead to confusing or overly complex class hierarchies.

2. **Fragile Base Class Problem**:
   - Changes to the parent class can unintentionally break the behavior of child classes, especially if the parent class has tightly coupled logic.

---

### Related Concepts:
- [[Polymorphism]]: Inheritance enables polymorphism, where child classes can be treated as instances of the parent class.
- [[Abstraction]]: Inheritance allows for higher-level abstractions by defining general behaviors in the parent class that are shared by multiple subclasses.
- [[Encapsulation]]: Inherited fields and methods can still be protected using access modifiers (e.g., `private`, `protected`).
- [[Interface]]: An alternative to inheritance, where classes can implement multiple interfaces to simulate multiple inheritance in languages like Java.

---

#OOP #Inheritance #Polymorphism #Abstraction #Java
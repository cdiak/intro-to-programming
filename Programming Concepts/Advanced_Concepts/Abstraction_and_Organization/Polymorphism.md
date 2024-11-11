## Polymorphism

- **Polymorphism** is one of the fundamental principles of **object-oriented programming (OOP)**, allowing objects of different types to be treated as instances of the same class. Polymorphism enables a single function, method, or operator to behave differently based on the object or data type it is acting upon.

### Key Idea:
- The word "polymorphism" means "many forms." In programming, polymorphism allows objects from different classes that are part of the same hierarchy (e.g., sharing a common superclass or implementing a common interface) to be treated uniformly, while their specific behavior can vary.

### Types of Polymorphism:

1. **Compile-time Polymorphism (Static Polymorphism)**:
   - Also known as **method overloading**, this type of polymorphism occurs when multiple methods share the same name but differ in the type or number of parameters.
   - **Example**:
     ```java
     public class Calculator {
         public int add(int a, int b) {
             return a + b;
         }

         public double add(double a, double b) {
             return a + b;
         }
     }

     public static void main(String[] args) {
         Calculator calc = new Calculator();
         System.out.println(calc.add(5, 10));  // Calls the int version
         System.out.println(calc.add(5.5, 10.2));  // Calls the double version
     }
     ```

2. **Runtime Polymorphism (Dynamic Polymorphism)**:
   - Also known as **method overriding**, this occurs when a child class provides a specific implementation of a method that is already defined in its parent class. At runtime, the correct method is called based on the actual object's type, not the reference type.
   - **Example**:
     ```java
     class Animal {
         public void sound() {
             System.out.println("This animal makes a sound");
         }
     }

     class Dog extends Animal {
         @Override
         public void sound() {
             System.out.println("The dog barks");
         }
     }

     class Cat extends Animal {
         @Override
         public void sound() {
             System.out.println("The cat meows");
         }
     }

     public class Main {
         public static void main(String[] args) {
             Animal myAnimal = new Dog();
             myAnimal.sound();  // Calls the Dog's sound method

             myAnimal = new Cat();
             myAnimal.sound();  // Calls the Cat's sound method
         }
     }
     ```
   - In this case, the `sound()` method behaves differently depending on whether the object is a `Dog` or a `Cat`, even though the reference is of type `Animal`.

---

### Benefits of Polymorphism:

1. **Code Reusability**:
   - Polymorphism allows you to define one interface or method and use it in multiple forms, reducing code duplication.
   - **Example**: A `draw()` method can work for both `Circle` and `Rectangle` objects without needing to write separate methods for each shape.

2. **Maintainability**:
   - With polymorphism, you can add new classes or types with minimal changes to the existing code. The same method or function can handle the new types seamlessly.
   - **Example**: Adding a new class `Bird` that extends `Animal` doesn’t require modifying the `sound()` method's caller.

3. **Extensibility**:
   - Polymorphism makes it easy to extend systems by adding new functionality without altering existing code, ensuring that the software is scalable and flexible.

4. **Dynamic Behavior**:
   - At runtime, objects can change behavior dynamically depending on their actual type, allowing for more flexible and adaptive systems.

---

### Polymorphism in Practice:

1. **Interfaces and Abstract Classes**:
   - Polymorphism is often implemented through **interfaces** and **abstract classes**. These allow multiple classes to implement the same methods, ensuring that objects of different types can be treated polymorphically.
   - **Example**: An interface `Shape` could be implemented by `Circle`, `Square`, and `Triangle`, each having its own `draw()` method.
     ```java
     interface Shape {
         void draw();
     }

     class Circle implements Shape {
         public void draw() {
             System.out.println("Drawing a circle");
         }
     }

     class Square implements Shape {
         public void draw() {
             System.out.println("Drawing a square");
         }
     }

     public class Main {
         public static void main(String[] args) {
             Shape shape1 = new Circle();
             Shape shape2 = new Square();
             shape1.draw();  // Drawing a circle
             shape2.draw();  // Drawing a square
         }
     }
     ```

2. **Overloading Operators** (in languages like C++):
   - In languages like C++, operators can be overloaded to work differently based on the operand types, providing another form of polymorphism.

3. **Polymorphic Collections**:
   - Collections such as arrays or lists can hold objects of different types as long as they share a common interface or superclass. This enables polymorphic behavior when interacting with these collections.
   - **Example**: A list of `Shape` objects might contain `Circle`, `Square`, and `Triangle` objects, and calling `draw()` on each of them will invoke the appropriate method.

---

### Real-World Analogy:
- Consider a **universal remote**: The remote has a single button for "power" (method), but it works differently depending on whether it’s controlling a TV, an air conditioner, or a sound system (the objects). The remote is polymorphic because the "power" button adapts to the device it’s interacting with.

---

### Common Pitfalls:

1. **Excessive Overloading**:
   - Overusing method overloading can make code difficult to understand, especially when the differences between methods are subtle (e.g., changing only in the number of parameters).

2. **Tight Coupling**:
   - When child classes heavily depend on the parent class for behavior, it can lead to tight coupling, making the system harder to extend or modify. Care should be taken to design loosely coupled systems.

---

### Related Concepts:
- [[Inheritance]]: Polymorphism relies on inheritance, where child classes inherit methods from a parent class but can override or modify them.
- [[Abstraction]]: Polymorphism allows for abstract concepts, where objects can be treated generically while exhibiting different behaviors.
- [[Encapsulation]]: Polymorphism works hand in hand with encapsulation, as objects expose a common interface but hide their internal implementation.
- [[Interface]]: An interface defines a contract that classes can implement, enabling polymorphism by allowing different types to be treated the same way.

---

#OOP #Polymorphism #Inheritance #Abstraction #Java #CodeReuse

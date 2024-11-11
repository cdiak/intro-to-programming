## Design Pattern

- A **Design Pattern** is a general, reusable solution to a commonly occurring problem in software design. It’s a template or blueprint that can be adapted to fit specific situations, rather than a finished solution.
- Design patterns provide a **best practice approach** to solving problems and improving code organization, making it easier to design flexible, maintainable, and scalable systems.

### Key Idea:
- **Design Patterns** are not code but **abstract solutions** that can be applied to recurring problems in object-oriented programming (OOP).
- They improve software architecture by providing well-tested and proven ways to handle common design issues.

### Types of Design Patterns:

Design patterns are typically categorized into three types:
1. **Creational Patterns**: Deal with object creation mechanisms.
2. **Structural Patterns**: Deal with object composition and structure.
3. **Behavioral Patterns**: Deal with communication between objects.

---

### Creational Design Patterns

Creational patterns focus on **how objects are created**, ensuring that the creation process is flexible and reusable.

1. **Singleton Pattern**:
   - Ensures that a class has **only one instance** and provides a global point of access to it.
   - Useful when you need exactly one instance of a class to control certain actions, like managing configuration settings.
   - **Example in Java**:
     ```java
     public class Singleton {
         private static Singleton instance;

         private Singleton() {}  // Private constructor to prevent instantiation

         public static Singleton getInstance() {
             if (instance == null) {
                 instance = new Singleton();
             }
             return instance;
         }
     }
     ```

2. **Factory Method Pattern**:
   - Defines an interface for creating objects but allows subclasses to alter the type of objects that will be created.
   - Helps in decoupling the client code from the object creation process.
   - **Example**:
     ```java
     interface Shape {
         void draw();
     }

     class Circle implements Shape {
         public void draw() {
             System.out.println("Drawing Circle");
         }
     }

     class Square implements Shape {
         public void draw() {
             System.out.println("Drawing Square");
         }
     }

     class ShapeFactory {
         public Shape getShape(String shapeType) {
             if (shapeType.equals("Circle")) {
                 return new Circle();
             } else if (shapeType.equals("Square")) {
                 return new Square();
             }
             return null;
         }
     }
     ```

3. **Builder Pattern**:
   - Separates the construction of a complex object from its representation so that the same construction process can create different representations.
   - Useful when constructing objects that require many steps or optional configurations.
   - **Example**:
     ```java
     class Car {
         private String color;
         private String engineType;

         public static class Builder {
             private String color;
             private String engineType;

             public Builder setColor(String color) {
                 this.color = color;
                 return this;
             }

             public Builder setEngineType(String engineType) {
                 this.engineType = engineType;
                 return this;
             }

             public Car build() {
                 return new Car(this);
             }
         }

         private Car(Builder builder) {
             this.color = builder.color;
             this.engineType = builder.engineType;
         }
     }
     ```

---

### Structural Design Patterns

Structural patterns deal with **object composition**, making it easier to organize and manage relationships between entities.

1. **Adapter Pattern**:
   - Allows objects with incompatible interfaces to work together by wrapping one with an adapter.
   - Converts the interface of a class into another interface the client expects.
   - **Example**:
     ```java
     interface MediaPlayer {
         void play(String audioType, String fileName);
     }

     class Mp3Player implements MediaPlayer {
         public void play(String audioType, String fileName) {
             if (audioType.equalsIgnoreCase("mp3")) {
                 System.out.println("Playing mp3 file: " + fileName);
             }
         }
     }

     class MediaAdapter implements MediaPlayer {
         private AdvancedMediaPlayer advancedMusicPlayer;

         public MediaAdapter(String audioType) {
             if (audioType.equalsIgnoreCase("vlc")) {
                 advancedMusicPlayer = new VlcPlayer();
             } else if (audioType.equalsIgnoreCase("mp4")) {
                 advancedMusicPlayer = new Mp4Player();
             }
         }

         public void play(String audioType, String fileName) {
             if (audioType.equalsIgnoreCase("vlc")) {
                 advancedMusicPlayer.playVlc(fileName);
             } else if (audioType.equalsIgnoreCase("mp4")) {
                 advancedMusicPlayer.playMp4(fileName);
             }
         }
     }
     ```

2. **Facade Pattern**:
   - Provides a **simplified interface** to a complex subsystem or a group of subsystems.
   - Useful when you want to hide the complexities of a system and expose only what is necessary to the client.
   - **Example**:
     ```java
     class ShapeMaker {
         private Shape circle;
         private Shape square;

         public ShapeMaker() {
             circle = new Circle();
             square = new Square();
         }

         public void drawCircle() {
             circle.draw();
         }

         public void drawSquare() {
             square.draw();
         }
     }
     ```

3. **Composite Pattern**:
   - Composes objects into tree-like structures to represent part-whole hierarchies. It allows clients to treat individual objects and compositions of objects uniformly.
   - **Example**:
     ```java
     interface Component {
         void showDetails();
     }

     class Leaf implements Component {
         private String name;

         public Leaf(String name) {
             this.name = name;
         }

         public void showDetails() {
             System.out.println(name);
         }
     }

     class Composite implements Component {
         private List<Component> components = new ArrayList<>();

         public void addComponent(Component component) {
             components.add(component);
         }

         public void showDetails() {
             for (Component component : components) {
                 component.showDetails();
             }
         }
     }
     ```

---

### Behavioral Design Patterns

Behavioral patterns focus on **communication** between objects and how they interact with one another.

1. **Observer Pattern**:
   - Defines a **one-to-many dependency** between objects, so that when one object changes state, all its dependents (observers) are notified and updated automatically.
   - Useful for implementing distributed event handling systems.
   - **Example**:
     ```java
     interface Observer {
         void update(String message);
     }

     class ConcreteObserver implements Observer {
         private String name;

         public ConcreteObserver(String name) {
             this.name = name;
         }

         public void update(String message) {
             System.out.println(name + " received message: " + message);
         }
     }

     class Subject {
         private List<Observer> observers = new ArrayList<>();

         public void attach(Observer observer) {
             observers.add(observer);
         }

         public void notifyAllObservers(String message) {
             for (Observer observer : observers) {
                 observer.update(message);
             }
         }
     }
     ```

2. **Strategy Pattern**:
   - Defines a family of algorithms, encapsulates each one, and makes them interchangeable. The strategy pattern lets the algorithm vary independently from clients that use it.
   - **Example**:
     ```java
     interface Strategy {
         int execute(int a, int b);
     }

     class Addition implements Strategy {
         public int execute(int a, int b) {
             return a + b;
         }
     }

     class Subtraction implements Strategy {
         public int execute(int a, int b) {
             return a - b;
         }
     }

     class Context {
         private Strategy strategy;

         public Context(Strategy strategy) {
             this.strategy = strategy;
         }

         public int executeStrategy(int a, int b) {
             return strategy.execute(a, b);
         }
     }
     ```

3. **Command Pattern**:
   - Encapsulates a request as an object, thereby allowing users to parameterize clients with queues, requests, and operations.
   - **Example**:
     ```java
     interface Command {
         void execute();
     }

     class LightOnCommand implements Command {
         private Light light;

         public LightOnCommand(Light light) {
             this.light = light;
         }

         public void execute() {
             light.turnOn();
         }
     }

     class RemoteControl {
         private Command command;

         public void setCommand(Command command) {
             this.command = command;
         }

         public void pressButton() {
             command.execute();
         }
     }
     ```

---

### Real-World Analogy:
- Design patterns are like **recipes**:
   - A recipe gives you the steps needed to create a specific dish, but you can adapt the recipe to fit your specific ingredients or tools. Similarly, design patterns provide a solution template to solve a recurring problem, but you adapt the pattern to fit your specific codebase.

---

### Benefits of Using Design Patterns:
1. **Reusability**: Patterns offer reusable solutions for common design problems.
2. **Scalability**: They help in designing systems that are easier to scale and extend.
3. **Communication**: They provide a common vocabulary that developers can use to describe solutions and discuss design decisions.
4. **Maintainability**: Using well-structured design patterns leads to code that is easier to maintain and refactor.

---

### Related Concepts:
- [[OOP (Object-Oriented Programming)]]: Design patterns often leverage OOP principles like inheritance, polymorphism, and encapsulation.
- [[SOLID Principles]]: Design patterns align with the SOLID principles by promoting modular, flexible, and maintainable code.

**Design Patterns** offer a structured approach to solving common problems in software design. By understanding and applying design patterns, developers can create more robust, scalable, and maintainable software systems.
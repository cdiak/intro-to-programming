Describe what happens if you omit the following in HelloWorld.java:
a. public
b. static
c. void
d. args

a. Public: Error: Main method not found in class HelloWorld, please define the main method as:
   public static void main(String[] args)
or a JavaFX application class must extend javafx.application.Application
Java couldn't find the main method.

b. Static: Error: Main method not found in class HelloWorld, please define the main method as:
   public static void main(String[] args)
or a JavaFX application class must extend javafx.application.Application
Same error.

c. static: "message": "Return type for the method is missing", suggesting that the program doesn't know how to output data with this.

d. args: we get a few syntax errors: 
    Syntax error, insert "}" to complete ClassBody
    Syntax error, insert "... VariableDeclaratorId" to complete FormalParameterList
    Syntax error on token "}", delete this token
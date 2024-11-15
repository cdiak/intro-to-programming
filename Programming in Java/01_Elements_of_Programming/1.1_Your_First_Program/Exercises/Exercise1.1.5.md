Describe what happens if you try to execute UseArgument with each of the following command lines:

a. java UseArgument java
b. java UseArgument @!&^%
c. java UseArgument 1234
d. java UseArgument.java Bob
e. java UseArgument Alice Bob

a. Prints "Hi, java. How are you?"
b. zsh: event not found: &. I learned that the error zsh: event not found: & is not related to Java or the UseArgument program itself but rather to how the shell (in this case, zsh) interprets the command that was entered.
c. Prints "Hi, 1234. How are you?"
d. Prints "Hi, Bob. How are you?" But this is deceptive. This command can work because of a feature introduced in Java 11 called Java single-file source-code execution. This feature allows you to execute a single Java source file directly without explicitly compiling it first. When you run java UseArgument.java Bob, the java command will compile the UseArgument.java file in memory and then execute it, passing Bob as the command-line argument.
e. Prints "Hi, Alice. How are you?" Ignoring the second command line input.
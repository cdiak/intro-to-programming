/*
 * Suppose that a variable a is declared as double a = 3.14159.
 *  What does each of the following print?
 */

public class oneTwoEleven {
    public static void main(String[] args) {
        double a = 3.14159; // inline initialization
        System.out.println(a); // prints the value of `a` as a double: 3.14159
        System.out.println(a + 1); // adds 1 to `a`: 3.14159 + 1 = 4.14159 (a double), then prints it
        System.out.println(8 / (int) a); // casts `a` to an int: (int) 3.14159 = 3
        // then performs integer division: 8 / 3 = 2 (integer division truncates remainder)
        System.out.println(8 / a); // performs floating-point division: 8 / 3.14159 = 2.5464812403910124
        // the result is a double and is printed directly
        System.out.println((int) (8 / a)); // performs floating-point division first: 8 / 3.14159 = 2.5464812403910124
        // then casts the result to an int: (int) 2.5464812403910124 = 2 (truncates the fractional part)
        // prints the truncated integer: 2
    }
}

/* Some notes:
 * Originally, I thought that System.out.println(a) prints a String
 * with the value 3.14159, but it actually prints the value directly.
 * 
 * This automatically converts the double to a string for display,
 * so there is no conversion involved.
 * 
 * Furthermore, I failed to see, at first, that the int 1 is promoted to a double.
 * 
 * Print directly prints the values of the variable, regardless of type.
 */
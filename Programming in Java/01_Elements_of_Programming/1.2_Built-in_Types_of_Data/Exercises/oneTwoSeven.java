// Program that I wrote to evaluate each answer.

public class oneTwoSeven {
    public static void main(String[] args) {
        System.out.println(2 + "bc");
        System.out.println(2 + 3 + "bc");
        System.out.println((2+3) + "bc");
        System.out.println("bc" + (2+3));
        System.out.println("bc" + 2 + 3);
    }
}

// Answers for each condition:

/*
 *  System.out.println(2 + "bc");       ==>    2bc
    Explanation: The String "bc" is appended to the int 2 through concatenation.

    System.out.println(2 + 3 + "bc");   ==>    5bc
    Explanation: The operators are evaluated left to right, and the integers are added
                 together, then appended with concatention to "bc".
    
    System.out.println((2+3) + "bc");   ==>    5bc
    Explanation: The operators are evaluated left to right, the parentheses are unnecessary,
                 and the integers are added together, then appended with concatention to "bc".
    
    
    System.out.println("bc" + (2+3));   ==>    bc5
    Explanation: The parentheses cause the JVM to interpret 2+3 as integer addition, such that
                 the integers are added together, then appended with concatention to "bc".
    
    System.out.println("bc" + 2 + 3);   ==>    bc23
    Explanation: The operators are evaluated left to right, such that "bc" being first tells
                 the JVM to interpret the 2 and 3 as chars through implicit type conversion.
        
 */
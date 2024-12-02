/*  Suppose that a variable a is declared as int a = 2147483647
or equivalently, Integer.MAX_VALUE. What does each of the following print?
*/

// program I wrote to test empirically
public class oneTwoTen {
    public static void main(String[] args) {
        int a = 2147483647; // inline initialization of a
        System.out.print("When you use System.out.println(a) you get: ");
        System.out.println(a);
        // Explanation: This prints 2147483647 because it is a valid value 
        // for a variable of type int. It is the maximum values.
        
        System.out.print("When you type System.out.println(a+1) you get: ");
        System.out.println(a+1);
        // Explanation: Overflow of the range of int values by one leads this
        // to print -2147483648, which is -2^31. Java uses 32 bits to represent int
        // values, meaning there are 2^31 * 2 possible values. Including 0, this 
        // means that in the positive direction we can get to (2^31)-1 and in the
        // negative we can get -2^31, which is -2147483648.
        
        System.out.print("When you type System.out.println(2-a) you get: ");
        System.out.println(2-a);
        // Explanation: This is essentially saying 2 - 2147483647, which gives us
        // -2147483645, and this is a valid value of the int data type. It is 3 less
        // than the minimum value allowed by the 32 bit representation.
        
        System.out.print("When you type System.out.println(-2-a) you get: ");
        System.out.println(-2-a);
        // Explanation: When you type System.out.println(-2-a) you get: 2147483647
        // because you have overflow that takes you precisely to the maximum value
        // of the data type int. This is because a is 2^31-1, and hence, when we get
        // to -2^31, we still need to subtract 1 more to finish the calculation.
        // Overflow takes us back to 2^31-1.
        
        System.out.print("When you type System.out.println(2*a) you get: ");
        System.out.println(2*a);
        // Explanation: When you multiply 2147483647 by 2, you get a number that is
        // 2 less than 2^32. There are 2^32 possible values of the int data type,
        // and by overflow, each time you iterate over the max value in multiplication
        // you "lose" one because of the asymmetry around 0.
        
        System.out.print("When you type System.out.println(4*a) you get: ");
        System.out.println(4*a);
        // Explanation: The same logic holds for 4 times the overflow. Because the
        // maximum value is 1 less than the absolute value of the minimum value, each
        // time you multiply a number by the maximum value, you'll automatically subtract 1.        
    }
}


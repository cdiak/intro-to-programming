/*  The book said to get in the habit of typing questions like what
does Math.round(6.022e23) do? in a tiny java program, running it
and thinking about the results.

The result is 9223372036854775807, which is much smaller than the value of Avagrado.

So why is this the number? This is the maximum value of the long data type:
(2^63) - 1

Math.round() takes a double as input and converts it to long.

*/

public class tiny {
    public static void main(String[] args) {
        System.out.println(Math.round(6.022e23));
    }
}

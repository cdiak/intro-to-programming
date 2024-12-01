Explain how to use the following program to find the square root of a number:

```java
public class Quadratic {
    public static void main(String[] args) {
        double b = Double.parseDouble(args[0]);
        double c = Double.parseDouble(args[1]);
        double discriminant = b*b - 4.0*c;
        double d = Math.sqrt(discriminant);
        System.out.println((-b+d)/2.0);
        System.out.println((-b-d)/2.0);
    }
}
```

The quadratic equation can be used to find the roots of a polynomial of the form:

ax^2 + bx + c = 0.

The inputs to this equation are the constants b and c (a == 1 in this code).
The outputs of the equation are positive and negative values of x.
We must choose the inputs such that b = 0 and c = -N where N is the number whose square root you would like to find.

We can think of this as:

x^2 + 0x -N = 0, thus:
x^2 = N
x = sqrt(N)

The program has four steps:
1. Initialize variables.
2. Calculate discriminant.
3. Calculate sqrt(discriminant).
4. Calculate and print roots.

Step 1: At the start of the program, let us initialize b == 0 and c == -16 to find sqrt(N) where N = 16.
Step 2: The program computes the discriminant: b^2 - 4*a*c == 0 - 4*-16 == -4*-16 = 64
Step 3: The program assigns the sqrt(discriminant) to d, and d == 8.
Step 4: The program calculates `(-b + d) / (2*a) = (0 + 8) / 2` and `(-b - d) / (2*a) = (0 - 8) / 2` yielding 4 and -4.

Here is a trace table for the program with inputs b = 0 and c = -16:

| Step                          | Variable          | Value       | Explanation                                         |
|:-----------------------------:|:-----------------:|:-----------:|:---------------------------------------------------:|
| Start                         | `b`               | `0`         | Linear coefficient input.                           |
|                               | `c`               | `-16`       | Constant term input.                                |
| Compute Discriminant          | `discriminant`    | `64`        | `discriminant = b^2 - 4*a*c = 0^2 - 4*1*(-16)`.     |
| Compute sqrt(discriminant)    | `d`               | `8`         | `d = sqrt(discriminant) = sqrt(64)`.                |
| Compute First Root            | `x1`              | `4`         | `x1 = (-b + d) / (2*a) = (0 + 8) / 2`.              |
| Compute Second Root           | `x2`              | `-4`        | `x2 = (-b - d) / (2*a) = (0 - 8) / 2`.              |
| Output Root 1                 | Side effect       | `4`         | Positive square root of `16`.                       |
| Output Root 2                 | Side effect       | `-4`        | Negative square root of `16`.                       |


---

Notes on the relationship between discriminants and square roots:

The quadratic equation you’re solving is:

x² + 0x - N = 0

Here:
	•	a = 1
	•	b = 0
	•	c = -N

The formula for the discriminant is:

discriminant = b² - 4ac
Substitute b = 0 and a = 1:
discriminant = 0² - 4(1)(-N) = 4N

The program calculates the square root of the discriminant:
sqrt(discriminant) = sqrt(4N)

This simplifies to:
sqrt(discriminant) = 2 * sqrt(N)

In the equation x² - N = 0, the constant term is c = -N. When we compute the square root of the discriminant, we end up with 2 * sqrt(N), which is twice the positive square root of -c.

This relationship holds because:
	1.	The discriminant is defined as 4N in this specific setup (a = 1, b = 0).
	2.	The square root of 4N is always 2 * sqrt(N), where sqrt(N) is the magnitude of -c.

The square root of the discriminant being twice the constant term is a direct consequence of:
	•	The specific form of the equation x² - N = 0.
	•	The discriminant formula b² - 4ac with a = 1, b = 0, and c = -N.
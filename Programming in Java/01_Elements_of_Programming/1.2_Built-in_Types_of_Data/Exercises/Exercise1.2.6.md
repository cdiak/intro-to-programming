Why does 10/3 give 3 and not 3.333333333333?

In Java, by default, there is no implicit type conversion (except for methods like Math.round()), so Java
interprets 10/3 as integers, dropping the decimal value.

---

Your explanation is correct! Here’s a more detailed explanation of why 10 / 3 evaluates to 3 in Java:

Integer Division in Java

	•	When both operands of the division operator (/) are integers, Java performs integer division.
	•	In integer division, the fractional part of the result is truncated (i.e., discarded), leaving only the whole number part.

For example:

10 / 3

	•	Both 10 and 3 are integers.
	•	Java divides 10 by 3, yielding 3 as the quotient, and discards the remainder (1).
	•	Therefore, the result of 10 / 3 is 3.

Why No Decimal Part?

Java does not perform implicit type conversion (known as “type promotion”) for integers in this case. Since both operands are integers, the result is also treated as an integer.

Getting a Decimal Result

To get a decimal result (e.g., 3.333333333333), you need to use floating-point division. This can be done by ensuring at least one operand is a floating-point number, like double or float. For example:
	1.	Explicit Cast:

double result = (double) 10 / 3; // Outputs: 3.3333333333333335


	2.	Using Floating-Point Literals:

double result = 10.0 / 3; // Outputs: 3.3333333333333335


	3.	Assigning to a Floating-Point Variable:

double result = 10 / 3.0; // Outputs: 3.3333333333333335



Key Takeaway

	•	If both operands are integers, Java performs integer division, discarding the decimal part.
	•	To include the decimal part, ensure at least one operand is of type double or float.
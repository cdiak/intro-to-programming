Suppose that a and b are int variables. What does the following sequence of statements do?

int t = a; b = t; a = b;

This is an inline initialization of three int data type variables, t, a, and b. We begin with a value of a that is assigned to t. Then, that value of t is assigned to b. Finally, the value of b is assigned to a. However, the third statement is unnecessary because the value of a was originally assigned to t and then to b, so assigning it back to a is redundant.
"""1.2.17
Compose a program that writes the sum of two random integers
between 1 and 6 (such as you might get when rolling dice).
"""

import random
import stdio

a = int(random.randrange(1,7))
b = int(random.randrange(1,7))

result = a + b

stdio.write("The first integer is ")
stdio.writeln(a)

stdio.write("The second integer is ")
stdio.writeln(b)

stdio.write("The sum of the two is ")
stdio.writeln(result)
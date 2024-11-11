"""
1.2.27 Uniform random numbers. Compose a program that writes five uniform
random floats between 0.0 and 1.0, their average value, and their min and
max values using built in min and max functions.
"""

# import modules
import random
import stdio

# initialize five random floats
a = random.random()
b = random.random()
c = random.random()
d = random.random()
e = random.random()

# calculate mean, max, min
mean = (a + b + c + d + e)/5
max = max(a, b, c, d, e)
min = min(a, b, c, d, e)

# print initialized random variables
stdio.writeln(a)
stdio.writeln(b)
stdio.writeln(c)
stdio.writeln(d)
stdio.writeln(e)

# print calculations with explanations of each
stdio.write("The mean is: ")
stdio.writeln(mean)

stdio.write("The max is: ")
stdio.writeln(max)

stdio.write("The min is: ")
stdio.writeln(min)
"""
1.2.24 Gaussian random numbers. One way to generate a random number
taken from the Gaussian distribute is to use the Box-Muller formula:

w = sin(2*pi*v)*(-2*ln*u)^1/2

Where u and v are real numbers between 0 and 1 generated by the 
random.random() method (Note, authors originally had Math.random). 
Compose a program that writes a standard Gaussian random variable.
"""

import stdio
import math
import random

# Generate random numbers
u = random.random()
v = random.random()

# Calculate w with Box-Muller Formula
w = math.sin(2*math.pi*v)*(-2*math.log(u))**0.5

# Print w to the screen
stdio.writeln(w)
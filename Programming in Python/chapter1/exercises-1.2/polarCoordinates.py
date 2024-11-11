"""
1.2.23 Polar coordinates. Compose a program that converts from Cartesian
to polar coordinates. Your program should accept two floats x and y from
the command line and write the polar coordinates r and theta. Use the 
Python function math.atan2(y,x), which computes the arctangent value of
y/x that is in the range from -pi to pi.
"""

# Import necessary modules
import sys
import math
import stdio

# Convert command-line inputs to floats
x = float(sys.argv[1])
y = float(sys.argv[2])

# Calculate polar coodinates using arctangent
theta = math.atan2(y,x)
r = math.sqrt(x**2 + y**2)

stdio.writeln("The polar coordinates are: ")
stdio.write("Theta: ")
stdio.writeln(theta)
stdio.write("R: ")
stdio.writeln(r)
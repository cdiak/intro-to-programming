"""
1.2.31 Three sort. Compose a program that takes three integers from the command
line and writes them in ascending order. Use the built-in min() and max() functions.
"""

# import modules
import sys
import stdio

# initialize variables
a = int(sys.argv[1])
b = int(sys.argv[2])
c = int(sys.argv[3])

# assign minimum to x
x = min(a,b,c)

# assign middle value to y
# logic is to add all three values, then subtract the max and min
y = a+b+c-min(a,b,c)-max(a,b,c)

# assign maximum to z
z = max(a,b,c)

# output to terminal
stdio.writeln(x)
stdio.writeln(y)
stdio.writeln(z)

"""
Note to self: tried all sorts of boolean logic for >10 minutes, 
but it's a simple subtraction problem. Discovered an elegant solution.
"""
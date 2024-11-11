"""
1.2.25 Order check. Compose a program that accepts three floats, x, y, z
as command line arguments and writes True if the values are strictly 
ascending or descending and False otherwise.
"""

# import modules
import sys
import stdio

# convert input to floats
x = float(sys.argv[1])
y = float(sys.argv[2])
z = float(sys.argv[3])

# Check if values are strictly ascending or descending
order = (x > y > z) or (x < y < z)

# Print true or false to command line
stdio.writeln(order)
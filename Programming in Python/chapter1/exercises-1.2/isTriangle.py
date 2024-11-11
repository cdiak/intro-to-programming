"""
1.2.12 Compose a program that takes three positive integers as command-line
arguments and writes False if any one of them is greater than or equal to 
the sum of the other two and True otherwise. (Note: This computation tests
whether the three numbers could be the lengths of the sides of some triangle.)
"""

import sys
import stdio

a = int(sys.argv[1])
b = int(sys.argv[2])
c = int(sys.argv[3])

isTriangle = (a + b) > c
isTriangle = isTriangle and (a + c) > b
isTriangle = isTriangle and (b + c) > a

stdio.writeln(isTriangle)
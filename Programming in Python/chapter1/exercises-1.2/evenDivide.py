# 1.2.11 Compose a program that takes two positive integers as command-line args
# and writes True if either evenly divides the other

import sys
import stdio

a = int(sys.argv[1])
b = int(sys.argv[2])

evenDivide = a%b == 0
evenDivide = evenDivide or b%a == 0

stdio.writeln(evenDivide)
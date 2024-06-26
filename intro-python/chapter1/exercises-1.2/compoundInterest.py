"""
1.2.21  

Continuously compounded interest. Compose a program that calculates
and writes the amount of money you have if you invested it at a given
interest rate, compounded continuously, taking the number of years t,
the principal P, and the annual interest rate r as command-line arguments.
The desired value is given by the formula Pe^rt.
"""

# import necessary modules
import sys
import stdio
import math

# convert command-line input to floats
P = float(sys.argv[1])
r = float(sys.argv[2])
t = float(sys.argv[3])

# use math.exp to represent exponential function of x, e^x
valueOfInvestment = P*math.exp(r*t)

stdio.writeln(valueOfInvestment)
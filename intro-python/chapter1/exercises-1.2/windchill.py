"""
1.2.22 Wind chill. Given the temperature T (in degrees F) and the wind speed
v (in mph), the National Weather Service defines the effective temperature
(wind chill) to be:

w = 35.74 + 0.6215*T + (0.4275*T - 35.75)*v^0.16

Compose a program that takes two floats t and v from the command line and
writes out the wind chill. Note: This formula is not valid if t is larger
than 50 in absolute value or if v is larger than 120 or less than 3 (you 
may assume that the values you get are in that range).
"""

# import necessary modules
import sys
import stdio

# convert command-line input to floats
t = float(sys.argv[1])
v = float(sys.argv[2])

w = (35.74 + 0.6215*t) + ((0.4275*t - 35.75)*(v**0.16))

stdio.writeln(w)
"""
1.2.26 Day of the week. Compose a program that accept a date as input
and writes the day of the week that date falls on. Your program should
accept three command-line arguments: m (month), d (day), and y (year). 

For m, use 1 for January, etc.
For output, write 0 for Sunday, 1 for Monday, etc.
Use the following formulas for the Gregorian calendar:

y0 = y - (14 - m) / 12
x = y0 + y0/4 - y0/100 + y0/400

m0 = m + 12 * ((14-m) / 12) - 2

d0 = (d+x+(31*m0)/12)%7
"""

# import modules
import sys
import stdio

# initialize variables as integers
m = int(sys.argv[1])
d = int(sys.argv[2])
y = int(sys.argv[3])

# calculate day of the week using formulas
y0 = y - ((14 - m) // 12)
x = y0 + y0//4 - y0//100 + y0//400
m0 = m + 12 * ((14-m) // 12) - 2
d0 = (d+x+(31*m0)//12)%7

stdio.writeln(d0)

# Note, had to use integer division //
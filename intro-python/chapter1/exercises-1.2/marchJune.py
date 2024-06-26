"""
1.2.20 Compose a program that takes two integers m and d from the
command line and writes True if day d of month m is between March 20
and June 20, and False otherwise. (m = 1 for January, and so on)
"""

import sys
import stdio

m = int(sys.argv[1])
d = int(sys.argv[2])

day = (m == 3 and d >= 20 and d <= 31)
day = day or (m == 4 and d >= 1 and d <= 30)
day = day or (m == 5 and d >= 1 and d <= 31)
day = day or (m == 6 and d >= 1 and d <= 20)

stdio.writeln(day)
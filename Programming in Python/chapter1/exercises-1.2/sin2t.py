import sys
import stdio
import math

t = float(sys.argv[1])
total = math.sin(2*t) + math.sin(3*t)

stdio.writeln(total)
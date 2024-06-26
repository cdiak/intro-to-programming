"""
1.2.19 Compose a program that takes three floats, x0, v0, and t
from the command line, evaluates x0 + v0*t - G*t*t/2, and writes the result.
G = 9.80665, the displacement in meters after t seconds when an object
is thrown straight up from initial position x0 at velocity v0 meter/sec.
"""

import sys
import stdio

x0 = float(sys.argv[1])
v0 = float(sys.argv[2])
t = float(sys.argv[3])
G = 9.80665

result = (x0 + v0*t) - (G*t*t)/2
stdio.writeln(result)
import sys
import math
import stdio

theta = float(sys.argv[1])
cosSquare = (math.cos(theta)*math.cos(theta))
sinSquare = (math.sin(theta)*math.sin(theta))
stdio.writeln(cosSquare + sinSquare)
stdio.writeln((cosSquare + sinSquare) == 1)

"""
This program uses math.sin() and math.cos() to check that
the values of cos^2(theta) + sin^2(theta) is approx == 1.0
for any theta entered as a command-line argument.

The values are not always exactly equal to 1.0,
even though they should be because of Pythagorean identity,
because of floating point arithmetic. 
"""
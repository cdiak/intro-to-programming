"""
1.2.29 Color conversion. Several different formats are used to represent color.
For example, the primary format for LCD displays, digital camera, and web pages,
known as the RGB format, specifies the level of red (R), green (G), and blue (B)
on an integer scale from 0 to 255.

The primary format for publishing books and magazines, known as the CMYK format,
specifies the level of cyan (C), magenta (M), yellow (Y), and black (K) on a real
scale from 0.0 to 1.0. 

Compose a program that converts RGB to CMYK. Accept three integrers--r, g, and b--
from the command line and write the equivalent CMYK values. If the RGB values are
all 0, then the CMY values are all 0 and K value is 1; otherwise, use these 
formulas:

w = max (r/255, g/255, b/255)
c = (w - (r/255))/w
m = (w - (g/255))/w
y = (w - (b/255))/w
k = 1 - w
"""

import sys
import stdio

r = int(sys.argv[1])
g = int(sys.argv[2])
b = int(sys.argv[3])

w = max(r/255, g/255, b/255)
c = (w - (r/255))/w
m = (w - (g/255))/w
y = (w - (b/255))/w
k = 1 - w

stdio.write("The value of c is: ")
stdio.writeln(c)

stdio.write("The value of m is: ")
stdio.writeln(m)

stdio.write("The value of y is: ")
stdio.writeln(y)

stdio.write("The value of k is: ")
stdio.writeln(k)
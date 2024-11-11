"""
1.2.32 Dragon curves. Compose a program to write the instructions for drawing
the dragon curves of order 0 through 5. The instructions are string of F, L, 
and R, characters, where F means 'draw line while moving 1 unit forward,' L means
'turn left,' and R means 'turn right.' A dragon curve of order n is formed when
you fold a strip of paper in half n times, then unfold it to right angles. 

The key to solving this problem is to note that a curve of order n is a curve
of order n-1 traversed in reverse order, and then to figure out a similar
description for the reverse curve.

Dragon curves of order 0, 1, 2, and 3:

F
FLF
FLFLFRF
FLFLFRFLFLFRFRF
"""

import stdio

dragon0 = 'F'
dragon1 = dragon0 + 'L' + dragon0
dragon2 = dragon1 + 'L' + dragon0 + 'R' + dragon0
dragon3 = dragon2 + 'L' + dragon1 + 'R' + dragon0 + 'R' + dragon0
dragon4 = dragon3 + 'L' + dragon2 + 'R' + dragon1 + 'R' + dragon0 + 'R' + dragon0
dragon5 = dragon4 + 'L' + dragon3 + 'R' + dragon2 + 'R' + dragon1 + 'R' + dragon0 + 'R' + dragon0
stdio.writeln(dragon0)
stdio.writeln(dragon1)
stdio.writeln(dragon2)
stdio.writeln(dragon3)
stdio.writeln(dragon4)
stdio.writeln(dragon5)

"""
Output should be:

F
FLF
FLFLFRF
FLFLFRFLFLFRFRF
FLFLFRFLFLFRFRFLFLFLFRFRFLFRFRF
FLFLFRFLFLFRFRFLFLFLFRFRFLFRFRFLFLFLFRFLFLFRFRFRFLFLFRFRFLFRFRF

Process for building this manually was horrible. Want loops.
"""
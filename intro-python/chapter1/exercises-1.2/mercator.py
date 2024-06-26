"""
1.2.28 Mercator projection. The mercator projection is a conformal (angle
preserving), projection that maps latitude phi and longitude lambda to
rectangular coordinates (x, y). It is widely used--for example, in nautical
charts and in the maps that you print from the web. The projection
is defined by the equations 

x = lambda - lambda0 

and 

y = 1/2*(ln((1 + sin(phi))/1 - sin(phi))) 

where lambda0 is the longitude
of the point in the center of the map. Compose a program that accepts
lambda0 and the latitude and longitude of a point from the command line
and writes its projection.
"""

import sys
import math
import stdio

lambda0 = float(sys.argv[1])
latitude = float(sys.argv[2])
longitude = float(sys.argv[3])

x = longitude - lambda0 
y = 0.5*math.log((1 + math.sin(latitude))/(1 - math.sin(latitude)))

stdio.write("The x coordinate is: ")
stdio.writeln(x)
stdio.write("The y coordinate is: ")
stdio.writeln(y)
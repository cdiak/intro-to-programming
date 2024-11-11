"""
1.2.30 Great circle. Compose a program that accept four floats as command
line arguments--x1, y1, x2, y2--the latitude and longitude, in degrees, of
two points on the earth, and writes the great circle distance between them,
given in nautical miles as:

d = 60*arccos((sin(x1)*sin(x2)) + (cos(x1)*cos(x2)*cos(y1-y2)))

Note that this equations uses degrees, whereas Python's trig functions use
radians. Use math.radians() and math.degrees() to convert between them. 

Use your program to compute the great circle distance between Paris (48.87 degrees
north and -2.33 degrees west) and San Francisco (37.8 degrees north and 122.4
degrees west)
"""

# import modules
import sys
import stdio
import math

# convert degrees input to radians for Python trig functions
x1 = math.radians(float(sys.argv[1]))
y1 = math.radians(float(sys.argv[2]))
x2 = math.radians(float(sys.argv[3]))
y2 = math.radians(float(sys.argv[4]))

# calculate trig functions and convert back to degrees
distance = 60 * math.degrees(
    math.acos(
        math.sin(x1) * math.sin(x2) + 
        math.cos(x1) * math.cos(x2) * 
        math.cos(y1 - y2)
    )
)

# print the distance, in nautical miles, to the screen
stdio.write("The location with the coordinates ")
stdio.write(math.degrees(x1))
stdio.write(", ")
stdio.write(math.degrees(y1))
stdio.write(", is ")
stdio.writeln(distance)
stdio.write("nautical miles from the location with the coordinates ")
stdio.write(math.degrees(x2))
stdio.write(", ")
stdio.write(math.degrees(y2))

# and an overly verbose explanation
# 1.1.6 Modify useargument.py to compose a program usethree.py 
# that takes three names and writes a proper sentence with the names
# in the reverse of the order they are given, so that, for example
# python usethree.py Alice Bob Carol writes the string
# 'Hi Carol, Bob, and Alice'

import sys
import stdio

stdio.write("Hi ")
stdio.write(sys.argv[3])
stdio.write(", ")
stdio.write(sys.argv[2])
stdio.write(", and ")
stdio.write(sys.argv[1])
# 1.2.5. What does each of these statements write?
# Explain each outcome.

import sys
import stdio

# Expected Behavior: 5 
stdio.writeln(2+3)
# Explanation: 2 and 3 are references to object of type int

# Expected Behavior: 5.5
stdio.writeln(2.2 + 3.3)
# Explanation: 2.2 and 3.3 are references to object of type float

# Expected Behavior: 23
stdio.writeln('2'+'3')
# Explanation: '2' and '3' are references to object of type str

# Expected Behavior: 2.23.3
stdio.writeln('2.2'+'3.3')
# Explanation: '2.2' and '3.3' are references to object of type str

# Expected Behavior: 23
stdio.writeln(str(2)+str(3))
# Explanation: '2' and '3' are converted to type str

# Expected Behavior: 2.23.3
stdio.writeln(str(2.2)+str(3.3))
# Explanation: '2.2' and '3.3' are converted to type str

# Expected Behavior: 5
stdio.writeln(int('2') + int('3'))
# Explanation: '2' and '3' are converted to type int

# Expected Behavior: 23
stdio.writeln(int('2'+'3'))
# Explanation: object reference ==> 23 is converted to type int

# Expected Behavior: 5.0
stdio.writeln(float('2')+float('3'))
# Explanation: '2' and '3' are converted to type float

# Expected Behavior: 23.0
stdio.writeln(float('2'+'3'))
# Explanation: object reference ==> 23 is converted to type float

# Expected Behavior: 5
stdio.writeln(int(2.6+2.6))
# Explanation: object reference ==> 5.2 is converted to type int

# Expected Behavior: 4
stdio.writeln(int(2.6)+int(2.6))
# Explanation: conversion to int gives values 2 and 2, adding = 4
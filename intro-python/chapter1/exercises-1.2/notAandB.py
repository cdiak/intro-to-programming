"""Second proof of 1.2.3 that shows that the expression
(not (a and b) and (a or b)) or ((a and b) or not (a or b))
evaluates to true."""

import sys
import stdio

a = True
b = True

stdio.writeln((not (a and b) and (a or b)) or ((a and b) or not (a or b)))

a = True
b = False

stdio.writeln((not (a and b) and (a or b)) or ((a and b) or not (a or b)))

a = False
b = True

stdio.writeln((not (a and b) and (a or b)) or ((a and b) or not (a or b)))

a = False
b = False

stdio.writeln((not (a and b) and (a or b)) or ((a and b) or not (a or b)))
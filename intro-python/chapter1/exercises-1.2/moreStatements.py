# 1.2.7. What does stdio.writeln((1.0+2+3+4)/4) write?
# Answer: 2.5 because Python automatically converts integers to floats for / division

import stdio
stdio.writeln((1.0+2+3+4)/4)


# 1.2.8 Suppose that a is 3.14159. What do each of these statements write?

a = 3.14159

stdio.writeln(a)
# Should write: 3.14159

stdio.writeln(a + 1.0)
# Should write: 4.14159

stdio.writeln(8 // int(a))
# Should write: 2

stdio.writeln(8.0/a)
# Should write: whatever 8/pi is (e.g. 2.5464812403910124)

stdio.writeln(int(8.0/a))
# Should write: 2

# 1.2.9 Describe the effect of writing sqrt instead of math.sqrt in quadratic.py
""" You get a variable definition error.

    [{
	"resource": "~/exercises-1.2/quadratic.py",
	"owner": "_generated_diagnostic_collection_name_#0",
	"code": {
		"value": "reportUndefinedVariable",
		"target": {
			"$mid": 1,
			"path": "/microsoft/pyright/blob/main/docs/configuration.md",
			"scheme": "https",
			"authority": "github.com",
			"fragment": "reportUndefinedVariable"
		}
	},
	"severity": 4,
	"message": "\"sqrt\" is not defined",
	"source": "Pylance",
	"startLineNumber": 9,
	"startColumn": 5,
	"endLineNumber": 9,
	"endColumn": 9
}]
"""

# 1.2.10 Does (math.sqrt(2)*math.sqrt(2) == 2) evaluate to True or False?
# I imagine false because of the imprecision of floating point arithmetic.

import math
print(math.sqrt(2)*math.sqrt(2) == 2)

# Yup. It's false.
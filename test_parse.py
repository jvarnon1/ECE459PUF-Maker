from parse_circuit import *

f = open("c17/c17.bench")
b = circuit(1, f)
print("Inputs: \n")
print(b.inputs)
f.close()

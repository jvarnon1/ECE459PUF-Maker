import fault_impact as fi
import pandas as pd

def get_gate(impactdata): # impactdata is a pandas dataframe of gates sorted by fault impact
    for gate in impactdata["Gate"]:
        if ("->" not in gate): #ignore these reduntant gates as the wires are connected in design.
            break
    return gate

f = open("c3540/c3540.fault", "r")
print("Calculating Fault Impact...\n")
gates = fi.get_fault_impact(f)
f.close()
#print(gates)
print("Sorting Gates... \n")

fault_analysis = fi.fault_impact_pandas(gates)
print(fault_analysis)

# get the gate with the highest FI
higate = get_gate(fault_analysis)
print("Insert XOR at: " + higate + "\n")
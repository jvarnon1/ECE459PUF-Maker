# insert.py
import pandas as pd
def get_file(circuit_name, suffix):
    path = circuit_name + "/" + circuit_name + suffix
def get_gate(impactdata): # impactdata is a pandas dataframe of gates sorted by fault impact
    for gate in impactdata["Gate"]:
        if "->" not in gate: #ignore these reduntant gates as the wires are connected in design.
            break
    return gate

import fault_impact
gate = get_gate(fault_impact.fault_df)
print(gate)

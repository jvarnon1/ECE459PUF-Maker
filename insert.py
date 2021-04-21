# insert.py
import pandas as pd
def get_gate(impactdata): # impactdata is a pandas dataframe of gates sorted by fault impact
    return impactdata.iloc[0][0]

import fault_impact
#calculate Fault impact of c17
gate = get_gate(fault_impact.fault_df)
print(gate)

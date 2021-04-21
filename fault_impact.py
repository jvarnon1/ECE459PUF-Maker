# Fault Impact Analysis

import pandas as pd
faults = pd.DataFrame(columns=["gate","s-a-0","s-a-1","N_0","N_1","Fault Impact"])

#Read .fault file 
f = open("c17.fault", "r")
for l in f: #each line in the file
    line = l.split()
    if line[0].startswith("G"):
        gate = line[0]
        if (gate not in faults['gate']):
            print(gate)
        else:
            


        



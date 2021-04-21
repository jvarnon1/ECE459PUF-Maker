# Fault Impact Analysis

# Make a class for info on a gate
class gate:
    def __init__(self, name):
        self.name = name # the name of the gate
        self.s_a_0 = 0 # patterns that detect the stuck at 0 fault
        self.s_a_1 = 0 # patterns that detect the stuck at 1 fault
        self.o_a_0 = 0 # output bits affected by stuck at 0 faults 
        self.o_a_1 = 0 # output bits affected by stuck at 1 faults

    def get_fault_impact(self):
        self.fault_impact = self.s_a_0*self.o_a_0 + self.s_a_1*self.o_a_1

def bitsaffected(good, bad):
    n = good ^ bad #bitwise XOR
    count = 0
    while(n):
        count += n & 1
        n >>= 1
    return count # the number of 1 after XOR is the number of bits changed.


gate_list = []
name_list = []
#Read .fault file 
f = open("c17.fault", "r")
for l in f: #each line in the file
    line = l.split() #split up the words on the line
    if line[0].startswith("G"): #gates start with G
        # Get the gate's name
        name = line[0]
        if name not in name_list:
            name_list.append(name) # save name to list
            g = gate(name) # make a new gate object
            gate_list.append(g) # add gate object to list of gate objects
        else: #Find the gate with that name
            for g in gate_list:
                if g.name == name:
                    break
        
        #Get the fault type
        if line[1] == "/1:": # stuck at 1
            fault_type = 1 #save stuck at 1 type
            g.s_a_1 = g.s_a_1 + 1
        elif line[1] == "/0:": # stuck at 0
            fault_type = 0 #save stuck at 0 type
            g.s_a_0 = g.s_a_0 + 1
        
        # Get output bits affected
        if line[2] == "*": ## means output was affected
            bad_output = int(line[3], 2)
            if fault_type == 1: #for stuck at 1 faults
                g.o_a_1 = g.o_a_1 + bitsaffected(output,bad_output)
            elif fault_type == 0:
                g.o_a_0 = g.o_a_0 + bitsaffected(output,bad_output)
        g.get_fault_impact()

    elif line[0] == "test": #get the output of the test
        output = int(line[len(line)-1], 2)  #the lest element in the line is the output
    else:
        print("Error: unrecognized file line:\n \t %s\n", l)
f.close()

# print gate names with fault impact
print("Gate: \t fault impact \n")
for g in gate_list:
    print(g.name, g.fault_impact, "\n")

        


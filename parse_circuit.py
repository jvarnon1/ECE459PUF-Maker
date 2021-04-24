import enum

class circuit:
    def __init__(self, f_type, file): # given the file object and the type 
        self.inputs = []
        self.outputs = []
        self.wires = []
        self.operations = []
        
        if f_type == 1:
            print("Parsing bench file... \n")
            self.parse_b(file)
        elif f_type == 2:
            print("Parsing verilog file...\n")
            self.parse_v(file)
        else:
            print("Unrecognized circuit file\n")
    
    def parse_b(self, file):
        for line in file:
            if line.startswith("INPUT"):
                self.get_inputs(line)
            elif line.startswith("OUTPUT"):
                self.get_outputs(line)
            else:
                self.get_operations(line)

    def parse_v(self, file):
        print("unable to parse verilog at this time\n")
    
    def get_inputs(self, line):
        if line.startswith("INPUT"):
            input = line[line.find("(")+1:line.find(")")] # input signal is in parenthesis
            self.inputs.append(input)
    
    def get_outputs(self, line):
        if line.startswith("OUTPUT"):
            output = line[line.find("(")+1:line.find(")")] # output signal is in parenthesis
            self.inputs.append(output)
    
    def get_operations(self, line):
        l = line.split()
        op = operation()
        op.result = l[0]
        

class operation(self):
    def __init__(self):
        self.result = None
        self.operator = None
        self.operands = []

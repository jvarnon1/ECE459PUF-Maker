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
            self.get_inputs(line)
            self.get_outputs(line)
            self.get_wires(line)
            self.get_operations(line)

    def parse_v(self, file):
        print("unable to parse verilog at this time\n")
    
    def get_inputs(self, line):
        if line.startswith("INPUT"):
            input = line[line.find("(")+1:line.find(")")] # input signal is in parenthesis
            self.inputs.append(input)
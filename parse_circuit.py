import enum

class circuit:
    def __init__(self, f_type, file): # given the file object and the type 
        self.inputs = []
        self.outputs = []
        self.wires = []
        self.operations = []
        
        if f_type == file_type.bench:
            print("Parsing bench file... \n")
            self.parse_b(self, file)
        elif f_type == file_type.verilog:
            print("Parsing verilog file...\n")
            self.parse_v(self, file)
        else
            print("Unrecognized circuit file\n")

class file_type(enum.ENUM): # .bench and .v are formatted differently, must specify when creating class
    bench = 1
    verilog = 2

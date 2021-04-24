class Verilog:
    def __init__(self, circuit_name):
        self.filename = circuit_name + "/" + circuit_name + ".v"
        self.fd = open(self.filename)
        self.module_line = None
        self.inputs = None
        self.outputs = None
        self.wires = None
        self.body = None
        self.end = "endmodule"
        
    
    def get_module_line(self):
        for l in self.fd:
            if l.startswith("module"):
                line = l.split("(")
                signals = line[1].translate({ord(i): None for i in '();'})
                self.module_line = signals.split(",")
                if line[1].endswith(";"):
                    break
            elif self.module_line != None:
                line = l.translate({ord(i): None for i in '());'})
                signals = line.split(",")
                
    
    def get_inputs(self):
        for l in self.fd:
            if l.startswith("input")
                line = l.split()
                signals = line[1].replace(';', '')
                self.inputs = signals.split(",")
    
    def get_outputs(self):
        for l in self.fd:
            if l.startswith("output")
                line = l.split()
                signals = line[1].replace(';', '')
                self.outputs = signals.split(",")

    def get_wires(self):
        for l in self.fd:
            if l.startswith("wire")
                line = l.split()
                signals = line[1].replace(';', '')
                self.wires = signals.split(",")
    
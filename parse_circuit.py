import enum

class circuit:
    def __init__(self, file_type):
        self.inputs = []
        self.outputs = []
        self.wires = []
        self.operations = []

class file_type(enum.ENUM):
    bench = 1
    verilog = 2

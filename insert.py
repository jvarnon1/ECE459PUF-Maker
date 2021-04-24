# insert.py
import pandas as pd
class Verilog:
    def find_input_line(self, v_file):
    
    def find_output_line(self, v_file):

    def find_body

class 
def get_file(circuit_name, suffix):
    path = circuit_name + "/" + circuit_name + suffix
    f = open("path")
    return f

def get_gate(impactdata): # impactdata is a pandas dataframe of gates sorted by fault impact
    for gate in impactdata["Gate"]:
        if "->" not in gate: #ignore these reduntant gates as the wires are connected in design.
            break
    return gate

def insert_xor(gate, bench_file, v_file):


import fault_impact
gate = get_gate(fault_impact.fault_df)

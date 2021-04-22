// Verilog
// c17
// Ninputs 5
// Noutputs 2
// NtotalGates 6
// NAND2 6

module c17 (N1,N2,N3,N6,N7,N22,N23,K1,K2); //K4,K5); //had N22_1, N23_1

input N1,N2,N3,N6,N7,K1,K2; //K4,K5;

output N22, N23; //N22_1,N23_1;

wire N10,N11,N16,N19,N11_1,N23_1; // N22,N23;

nand NAND2_1 (N10, N1, N3);
nand NAND2_2 (N11, N3, N6);
nand NAND2_3 (N16, N2, N11_1);
nand NAND2_4 (N19, N11_1, N7);
nand NAND2_5 (N22, N10, N16);
nand NAND2_6 (N23_1, N16, N19);

//xor xor1 (N3_1, K1, N3);
xor xor1 (N11_1, K1, N11);
xor xor2 (N23, K2, N23_1);

//xnor xnor3 (N16_1, K3, N16);
// xor xor4 (N22_1, K4, N22);
// xor xor5 (N23_1, K5, N23);


endmodule
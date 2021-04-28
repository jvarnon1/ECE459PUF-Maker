module TX (A, E, Z);
output Z;
input A, E;
bufif1 (Z, A, E);
endmodule

module IV ( A, Z);
output Z;
input A;
not (Z, A);
endmodule

module BU (A, Z);
output Z;
input A;
buf (Z, A);
endmodule

module AN4(A, B, C, D, Z);
output Z;
input A, B, C, D;
and (Z, A, B, C, D);
endmodule

module AN3 (A, B, C, Z);
output Z;
input A, B, C;
and (Z, A, B, C);
endmodule

module AN2 (A, B, Z);
output Z;
input A, B;
and (Z, A, B);
endmodule

module ND4 (A, B, C, D, Z);
output Z;
input A, B, C, D;
nand (Z, A, B, C, D);
endmodule

module ND3 (A, B, C, Z);
output Z;
input A, B, C;
nand (Z, A, B, C);
endmodule

module ND2 (A, B, Z);
output Z;
input A, B;
nand (Z, A, B);
endmodule

module OR4 (A, B, C, D, Z);
output Z;
input A, B, C, D;
or (Z, A, B, C, D);
endmodule

module OR3 (A, B, C, Z);
output Z;
input A, B, C;
or (Z, A, B, C);
endmodule

module OR2 (A, B, Z);
output Z;
input A, B;
or (Z, A, B);
endmodule

module NR4 (A, B, C, D, Z);
output Z;
input A, B, C, D;
nor (Z, A, B, C, D);
endmodule

module NR3 (A, B, C, Z);
output Z;
input A, B, C;
nor (Z, A, B, C);
endmodule

module NR2 (A, B, Z);
output Z;
input A, B;
nor (Z, A, B);
endmodule

module EO (A, B, Z);
output Z;
input A, B;
xor (Z, A, B);
endmodule

module EN (A, B, Z);
output Z;
input A, B;
xnor (Z, A, B);
endmodule

module MUX21H (A, S, B, Z);
output Z;
input A, S, B;
wire SN, NA1, NA2;
not (SN, S);
and (NA1, A, SN);
and (NA2, B, S);
or (Z, NA1, NA2);
endmodule

module FDMASK (CP, Z, D, MASK);
output Z;
input CP, D, MASK;
DFF I1 (.Q(ZINT), .D(D), .CK(CP));
and (Z, ZINT, MASK);
endmodule

module FD1 (CP, Z, D);
output Z;
input CP, D;
DFF I1 (.Q(Z), .D(D), .CK(CP));
endmodule

module FD1S (Z, QN, D, TI, CP, TE);
output Z, QN;
input D, TI, CP, TE;
not (TEN, TE);
and (NA1, D, TEN);
and (NA2, TI, TE);
or (ZK, NA1, NA2);
DFF I1 (.Q(Z), .D(ZK), .CK(CP));
endmodule

module FD1S2 (Z, QN, D, TI, CP, TE, MASK);
output Z, QN;
input D, TI, CP, TE, MASK;

not (TEN, TE);
and (NA1, D, TEN);
and (NA2, TI, TE);
or (MUX_D_TI, NA1, NA2);

DFF I1 (.Q(ZINT), .D(MUX_D_TI), .CK(CP));
and (Z, ZINT, MASK);
not (QN, Z);
endmodule

# Instructions
This is the step by step instructions for our project

Contents
* [Setup](#setup)
* [Label Nodes](#label)

## Setup 
Instructions for installing hope and setting up the environment for use

### Install HOPE
* Head to the Digital Design & Dependability Research Group website under [downloads](https://ddd.fit.cvut.cz/www/index.php?page=download)
* Scroll down to Diagnostics and HOPE -Better fault simulator
  * If on windows click the link that says  `Windows Executable (needs "cygwin1.dll" to run)`
  * Else click the the link that says `Source`
* You now should have downloaded a zip file calle `hope.zip`
* Extract the contents to your choice of folders
  * If you are on a Windows you may need to download the Cygwin Library which is available on the same page further down under Other->Cygwin1.dll
* If on a windows machine you should now have an executable called `hope.exe`

### Get ISCAS85 Benchmarking Ciruits
* Head to the Digital Design & Dependability Research Group website under [downloads](https://ddd.fit.cvut.cz/www/index.php?page=download)
* Click the link under the Benchmarking Section labeled [A Collection of Digital Design Benchmarks](https://ddd.fit.cvut.cz/www/prj/Benchmarks/)
* Under the ISCAS'85 and '89 benchmarks section click `Download all`
* You know have a .7z folder with all the benchmark circuits you need, extract to your project directory
 * Note: You must have 7-zip to extract files from the zipped folder

## Label Nodes
In order to implement Logic Encryption we must label all the nodes and perform fault analysis on each. The HOPE software does most of the work for us. The following is an explanation for the labeling of nodes in ISCAS85 circuits

### ISCAS85 Netlist Formats
The ISCAS85 benchmarking circuits are given to us in a number of file formats:
* bench
* blif
* cir
* isc
* PLA
* Verilog
The hope software uses the bench files, Vivado uses Verilog files, and LTSPICE uses cir files. Each file type is a subdirectory in the ISCAS folder

#### .bench files
The .bench contains a netlist describing the design of the benchmarking circuit. 

The format is a lot different than VHDL or Verilog. With # signifying a comment and each line defining the output and inputs of Gates. 

For Example:
```
EXAMPLE: ISCAS89 NETLIST FORMAT (s27.bench)
--------------------------------------------------------------------
# s27
# 4 inputs
# 1 outputs
# 3 D-type flipflops
# 2 inverters
# 8 gates (1 ANDs + 1 NANDs + 2 ORs + 4 NORs)

INPUT(G0)
INPUT(G1)
INPUT(G2)
INPUT(G3)

OUTPUT(G17)

G5 = DFF(G10)
G6 = DFF(G11)
G7 = DFF(G13)

G14 = NOT(G0)
G17 = NOT(G11)

G8 = AND(G14, G6)

G15 = OR(G12, G8)
G16 = OR(G3, G8)

G9 = NAND(G16, G15)

G10 = NOR(G14, G11)
G11 = NOR(G5, G9)
G12 = NOR(G1, G7)
G13 = NOR(G2, G12)
-------------------------------------------------------------------
```
As you can see the nodes are `G0 - G11` and are connected by assigning outputs as variables, gates as functions, and inputs as arguments.


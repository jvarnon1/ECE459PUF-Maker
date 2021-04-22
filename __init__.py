import random
#Need inputs: Netlist, Keysize, EncryptionKey, FaultImpact
#outputs: Encrypted netlist

#Location Selection Phase
for i in range(1,keysize):
	#Get Fault Impact of each gate
	highestimpact= FaultImpact[0]
	#InsertXor @ highestimpact
	Netlist.append(xor@highestimpact)
	#Apply Test Patterns
end

#Modification Phase
r = random.randint(0,len(Netlist))

for x in range(0,r):
	if Netlist[x]=1:
		#Insert an inverter at O/P Netlist[x]
	end
end

#Not sure on this section
for x in range(0,r):
	if Netlist[x]=1:
		#Swap XOR for XNOR
	end
end

#Hamming Distance
#Need to input the output of Vivado
#XOR correct output of test case with output of each test for gates at 1 and 0
#add up number of ones(# of incorrect bit)
#divide that by total number of bits
		


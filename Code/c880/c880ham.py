def bitsaffected(good, bad):
    n = good ^ bad #bitwise XOR
    count = 0
    while(n):
        count += n & 1
        n >>= 1
    return count # the number of 1 after XOR is the number of bits changed.

def get_hamming_distance(correct_output, cipher_output):
    a = bitsaffected(correct_output, cipher_output)
    b = len(bin(correct_output)[2:])
    return a / b

f = open("c880/c880.dict", "r")
correct = int("00000111111000111000000000",2)
ham_list = []
for l in f: 
    line = l.split()
    output = int(line[-1],2)
    ham_dist = get_hamming_distance(correct, output)
    ham_list.append(ham_dist)
average_ham = sum(ham_list) / len(ham_list)
print("Hamming distance: " + str(average_ham) + "\n")



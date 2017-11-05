#Rosalind Assignment #5
#the names are a bit strange but overall I think they make sense


#-----------------------Data Input--------------------------

#Use this for external input

'''
fi = open("sequences_assignment5.txt", "r")
data = fi.read()
fi.close()
'''



data = '''>Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT'''

#-----------------------Functions--------------------------

def fasta_input (data_input):
    #setting up variables
    counter = 0
    name_array = [""]
    dna_array = [""]
    data_input = data_input.replace("\n", "")

    #sorting the names and dna into two different arrays - this is strange to do becuase the was fasta works, how the name may have
    #an undetermined amount of lines after in one section of dna rather than having the entire dna on the next line
    for k in data_input:
        if k == (">"):
            name_array.append("")
            dna_array.append("")
            counter +=1
        if 'G' == k or 'T' == k or 'A' == k or 'C' == k:
            dna_array[counter] = dna_array[counter] + k
        else:
            name_array[counter] = name_array[counter] + k

    #now we need to return the array in a more useful format. We could use something like a dictornary(maybe) but I am not that
    #familiar with how to use one. So rather we will send the two arrays combined into a single array.
    name_array.remove("")
    dna_array.remove("")
    filter_data = [name_array, dna_array]
    return filter_data


def GC_content (data_input):
    GC_of_each_array = []
    GCtotal = 0.0

    for sequence in data_input[1]:
        for k in sequence:
            if k == "G" or k=="C":
                GCtotal += 1
        GC_of_each_array.append( GCtotal/(len(sequence)) )
        GCtotal = 0.0

    return GC_of_each_array


#-----------------------------Main Program------------------------------------

#here we run the functions we just set up - create functions to save time in the future
filter_data = fasta_input(data)
GC_levels = GC_content(filter_data)

#I know that you can run internal counters but idk how, and this works
counter = 0
highestPos = 0
highestPosCounter = 0

for k in GC_levels:
    if k > highestPos:
        highestPos = k
        highestPosCounter = counter
    counter += 1


names = filter_data[0]
print names[highestPosCounter] + " " + str(round(highestPos * 100, 3))







#

#-------------------------------------------------------------------------------
#----------------------------Imports--------------------------------------------
#-------------------------------------------------------------------------------
import csv
import itertools

#-------------------------------------------------------------------------------
#------------Creating index of chromosome and lines assosiated------------------
#-------------------------------------------------------------------------------

'''
So here is the program I have written to sort the input by chromosome type into something
that is more appropriate. It has three parts, the first is getting all of the chromosomes.
The second part is to sort the chromosomes and map the changes. The third part goes over the
text input x numbner of times (where x is the number of chromosomes) and writes the
output to a file in the order of the new chromosomes.
'''

#Trial Three
fi = open("00-All.vcf", "r")

header = ''
chromosomeIndex = []

for x in range(14):
     header = header + fi.readline()
reader = csv.reader(fi, delimiter="\t")
counter = -1
for k in reader:
    counter += 1
    if k[0] not in chromosomeIndex:
        chromosomeIndex.append(k[0])
fi.close()
#-------------------------------------------------------------------------------
#------------Sorting the assosiated index---------------------------------------
#-------------------------------------------------------------------------------

sortedIndex =  []
for k in chromosomeIndex:
    sortedIndex.append(k)
sortedIndex.sort()

#-------------------------------------------------------------------------------
#------------running through the input file and exporting to new file-----------
#-------------------------------------------------------------------------------

fo = open("results.vcf", "a")
fo.write(header)

for k in sortedIndex:
    fi = open("00-All.vcf", "r")
    for x in range(14):
         header = fi.readline()
    reader = csv.reader(fi, delimiter="\t")
    for i in reader:
        if i[0] == k:
            fo.write('\t'.join(i) + "\n")
    fi.close()


print sortedIndex

#

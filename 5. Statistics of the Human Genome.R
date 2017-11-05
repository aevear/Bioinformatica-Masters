#-------------------------------------------------------------------------------
#1. Exploratory data analysis (apply descriptive statistics and graphs for one o more variables) of non-trivial variables of the genome table.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#Code Region
#-------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#imports libraries used in program
#-------------------------------------------------------------------------------

library(spatialEco)

#-------------------------------------------------------------------------------
#import data to R
#-------------------------------------------------------------------------------

canineGenome = read.table("canineGenome.txt", fill = TRUE)
humanGenome = read.table("humanGenome.txt", fill = TRUE)


#-------------------------------------------------------------------------------
#Basic data processing
#-------------------------------------------------------------------------------

#---------------------GC- Length-Human----------------------
#graph GC and length
plot(humanGenome[,7],humanGenome[,6], main="Human GC-Length Relationship",xlab="GC Percent", ylab="Length of Sequence")
lines(lowess(humanGenome[,7], humanGenome[,6]))

#GC in relation to length
cor.test(humanGenome[,6], humanGenome[,7])
p-value = 0.000366

#---------------------GC- Length-Dog-------------------------
#compare GC and length with two t-test
plot(canineGenome[,6],canineGenome[,5], main="Canine GC-Length Relationship",xlab="GC Percent", ylab="Length of Sequence")
lines(lowess(canineGenome[,6], canineGenome[,5]))

#GC in relation to length
cor.test(canineGenome[,6], canineGenome[,5])
p-value = 1.641e-05

#-------------------------------------------------------------------------------------------------------------------
#---------------------GC- Protein-Human----------------------
#GC in relation to protien
plot(humanGenome[,7],humanGenome[,8], main="Human GC-Protien Relationship",xlab="GC Percent", ylab="Amount of Proteins")
lines(lowess(humanGenome[,7], humanGenome[,8]))

cor.test(humanGenome[,7], humanGenome[,8])
p-value = 0.6073

#---------------------GC- Protein-Human----------------------
#GC in relation to protien
plot(canineGenome[,6],canineGenome[,7], main="Canine GC-Protien Relationship",xlab="GC Percent", ylab="Amount of Proteins")
lines(lowess(canineGenome[,6], canineGenome[,7]))

cor.test(canineGenome[,6], canineGenome[,7])
p-value = 1.641e-05
#-------------------------------------------------------------------------------------------------------------------
#---------------------GC- Protein-Human----------------------
#GC in relation to protien
plot(humanGenome[,7],humanGenome[,13], main="Human GC-Psuedo-Gene Relationship",xlab="GC Percent", ylab="Amount of Psuedo-Genes")
lines(lowess(humanGenome[,7], humanGenome[,13]))

cor.test(humanGenome[,7], humanGenome[,13])
p-value = 0.02532

#---------------------GC- Protein-Canine----------------------
#GC in relation to protien
plot(humanGenome[,7],humanGenome[,12], main="Canine GC-Psuedo-Gene Relationship",xlab="GC Percent", ylab="Amount of Psuedo-Genes")
lines(lowess(humanGenome[,7], humanGenome[,12]))

cor.test(humanGenome[,7], humanGenome[,12])
p-value = 0.1803

#-------------------------------------------------------------------------------
#2. Ask interesting questions (or hypotheses) about these variables or new variables (indexes...) derived from them, and try to answer appropriately the questions using the proper statistical tests
#-------------------------------------------------------------------------------

Intro to problem

Questions that I asked
 - exaplined each question a bit
 - Discuse using canine genome

Question 1 - Relationship between GC and Length
- reasons to ask this Question
- methods of testing Data
- Results of testing
- Implications of testing and limits of testing.

Question 2 - Relationship between GC and Amount of Protiens
- reasons to ask this Question
- methods of testing Data
- Results of testing
- Implications of testing and limits of testing.

Question 3 - Relationship between GC and Pseudogenes
 - reasons to ask this Question
 - methods of testing Data
 - Results of testing
 - Implications of testing and limits of testing.

 Summary of results
 - State possible implications that can be drawn from the research
 - State the path of future research and ways to strengthen the paper




#-------------------------------------------------------------------------------
#3. Summarize your exploration and analysis in a clear scientific writing.
#-------------------------------------------------------------------------------

After being given the Summary table of the Refseq annotations for the human genome


Questions that I asked
 - exaplined each question a bit
 - Discuse using canine genome

Question 1 - Relationship between GC and Length
- reasons to ask this Question
- methods of testing Data
- Results of testing
- Implications of testing and limits of testing.

Question 2 - Relationship between GC and Amount of Protiens
- reasons to ask this Question
- methods of testing Data
- Results of testing
- Implications of testing and limits of testing.

Question 3 - Relationship between GC and Pseudogenes
 - reasons to ask this Question
 - methods of testing Data
 - Results of testing
 - Implications of testing and limits of testing.

 Summary of results
 - State possible implications that can be drawn from the research
 - State the path of future research and ways to strengthen the paper



















#

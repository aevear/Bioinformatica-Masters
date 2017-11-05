#-------------------------------------------------------------------------------
#-------------------------Dengue:Zika Comparison--------------------------------
#-------------------------------------------------------------------------------
setwd("/Users/aevear/Desktop")
#-------------------------------------------------------------------------------
#-------------------------------Libraries---------------------------------------
#-------------------------------------------------------------------------------
library(seqinr)
library(HiddenMarkov)
library(HMM)
library(stats4)
#-------------------------------------------------------------------------------
#------------------------------Data Import--------------------------------------
#-------------------------------------------------------------------------------
zikaGenome = read.fasta("zika.txt")
zika <- zikaGenome[[1]]
dengueGenome = read.fasta("dengue.txt")
dengue <- dengueGenome[[1]]







#-------------------------------------------------------------------------------
#-----------------Part 1: Making the Markov model for Zika----------------------
#-------------------------------------------------------------------------------
#Estimates the transition probability for zika
zikaCount=count(zika,2)
zikaProbMatrix = matrix(zikaCount, 4, 4, byrow=TRUE, dimnames = list(c("A","C","G","T"),c("A","C","G","T")))
cat("Zika Probability Transition Matrix")
cat("--------------------------------------------------------------------------")
zikaProbMatrix[,]/(zikaProbMatrix[,1]+zikaProbMatrix[,2]+zikaProbMatrix[,3]+zikaProbMatrix[,4])
cat("--------------------------------------------------------------------------")









#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#--------Part 2: Find out which virus this sequence belongs to------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
testSequence <- dengue[101:200] #make the test sequence
#-------------------------------------------------------------------------------
#preparing the hmm sample matrix
hmm=initHMM(c("s1","s2"), c("a","c","g","t"), c(0.5,0.5), matrix(c(.9,.1,.1,.9),2)) #preparing the hmm sample matrix
#-------------------------------------------------------------------------------
#Create the Welch test lines for similarities
fit1= baumWelch(hmm,dengue)
fit2= baumWelch(hmm,zika)
fit3= baumWelch(hmm,testSequence)
#-------------------------------------------------------------------------------
#Extracting the results and turning them into strings
options(digits=15)
dengueResults = as.double(substring(fit1[2], 3, 19))
zikaResults = as.double(substring(fit2[2], 3, 19))
testResults = as.double(substring(fit3[2], 3, 19))
#-------------------------------------------------------------------------------
#Comparing and printing the results!!!
zikaDif = testResults - zikaResults
dengueDif = testResults - dengueResults
#-------------------------------------------------------------------------------
#A bit gross but I am having here a simple if statement to compare them from eachother
if(zikaDif > dengueDif)
{
  results = "Dengue"
}
if(zikaDif < dengueDif)
{
  results = "Zika"
}
cat("The unknown sample matches with : ", results)
cat("--------------------------------------------------------------------------")







#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#----------------Part 3: Second order Zika and Comparison-----------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#Generating the Simple Chain Model
a=count(zika,2)
c = matrix(a, 4, 4, byrow=TRUE, dimnames = list(c("A","C","G","T"),c("A","C","G","T")))
p=c[,]/(c[,1]+c[,2]+c[,3]+c[,4])
BIC1=-2*sum(c*log(p)) + par*log(n)

#Generating the second level markov model
n=length(zika)-2; par=48
c=table(xt_1:xt_2,xt)
p=c[,]/(c[,1]+c[,2]+c[,3]+c[,4])
BIC2=-2*sum(c*log(p)) + par*log(n)

cat("Markov Simple Chain Model      : ", BIC1)
cat("Markov Second Order Chain Model: ", BIC2)






#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#--------------------------------THE END----------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------------
#----------------------------Prep-work for assignment--------------------------------------------------
#------------------------------------------------------------------------------------------------------

#1-Create a vector called v and assign the values (3.14, 123, 0.01)
#v <- c(3.14,123,0.01)

#> v
#[1]   3.14 123.00   0.01
#-----------------------------------------------------------
#2- Create a new vector that stores three values: v, 123 and v
#nV <- c(v, 123,v)

#> nV
#[1]   3.14 123.00   0.01 123.00   3.14 123.00   0.01
#-----------------------------------------------------------
#3- Calculate the square root of vector v and store it in a new varieble
#nV2 <- sqrt(v)

#nV2
#[1]  1.772005 11.090537  0.100000
#-----------------------------------------------------------
#4- Now calculate the value of v divided by my_sqrt
#nV3 <- v/nV2

#nV3
#[1]  1.772005 11.090537  0.100000
#-----------------------------------------------------------
#5- Add this two vectors: (1, 2, 3, 4) and (0,100). What do you see? Can two vectors of different length be added?
#v1 <- c(1,2,3,4)
#v2 <- c(0,100)
#c(v1,v2)

#c(v1,v2)
#[1]   1   2   3   4   0 100
#-----------------------------------------------------------
#6- Create a sequence of numbers from 1 to 19 using the : operator
#cat(1:19)

#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
#-----------------------------------------------------------
#7- Now use seq() to create a sequence from 1 to 10 incrementing by 0.5
#cat(seq(1,19,0.5))

#1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10 10.5 11 11.5 12 12.5 13 13.5 14 14.5 15 15.5 16 16.5 17 17.5 18 18.5 19
#-----------------------------------------------------------
#8- Use seq() to generate a list of 50 numbers between 50 and 999 and store the list in a variable n
#n <- sample(50:999,50,replace=T)

#n
#[1] 128 502 542 210 216 582 152 233 189 414 704 201 738 432 975 634 647 993 793 852 422 557 789 880 122 232 519 832  89 289
#[31] 425 553 203  82 390 245 122 446 606 647 454 929 845 103 110 288 919 279 415 443
#-----------------------------------------------------------
#9- Apply the length() function to the variable n. Which is the result?
#length(n)

#[1] 50
#-----------------------------------------------------------
#10- Now generate a new list of numbers starting from 1 that has the same length as n variable
#seq(1:length(n))

#[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
#[41] 41 42 43 44 45 46 47 48 49 50
#-----------------------------------------------------------
#11- Create a vector with 100 zeros
#b <- 10^100

#b
#[1] 1e+100
#-----------------------------------------------------------
#12- Create a new vector with 10 repetitions of the vector ("a", "b", "c")
#v <- rep(c("a","b","c"),10)

#v
# [1] "a" "b" "c" "a" "b" "c" "a" "b" "c" "a" "b" "c" "a" "b" "c" "a" "b" "c" "a" "b" "c" "a" "b" "c" "a" "b" "c" "a" "b" "c"
#-----------------------------------------------------------
#13- Now create a new vector that contains 10 a letters, then 10 b's, then 10 c's and save it into a variable called abc
#abc <- c(rep("a",10),rep("b",10),rep("c",10))

#abc
#[1] "a" "a" "a" "a" "a" "a" "a" "a" "a" "a" "b" "b" "b" "b" "b" "b" "b" "b" "b" "b" "c" "c" "c" "c" "c" "c" "c" "c" "c" "c"
#-----------------------------------------------------------
#14- Create a vector with the values (1,100,-25,365) and save it into v1 variable
#v1 <- c(1,100,-25,365)

#v1
#[1]   1 100 -25 365
#-----------------------------------------------------------
#15- now create a new variable bool that gets the result of v1<1. What is the result of this operation? What kind of value you see?
#bool <- v1<1

#bool
#[1] FALSE FALSE  TRUE FALSE
#-----------------------------------------------------------
#16- Now take abc variable from question 13 and generate a single string value. That is, something like: (a,b,c) -> "abc"
#paste(abc, collapse = '')

#[1] "aaaaaaaaaabbbbbbbbbbcccccccccc"
#-----------------------------------------------------------
#17- Create a new matrix with 4 rows and 5 columns from a new vector that contains the values from 1 to 20. Store the results in variable m1
#matrixOne = matrix(
#  c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),
#  ncol=5,
#  nrow=4)

#matrixOne
#     [,1] [,2] [,3] [,4] [,5]
#[1,]    1    5    9   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20
#-----------------------------------------------------------
#18- Now create a vector called students with the values ("Ana","John","Pedro","Joan") and create a new matrix adding students as a new column to m1 matrix. What happens to numeric values?
#students <- c("Ana","John","Pedro","Joan")
#merge(students, matrixOne)

#       x V1 V2 V3 V4 V5
#1    Ana  1  5  9 13 17
#2   John  1  5  9 13 17
#3  Pedro  1  5  9 13 17
#4   Joan  1  5  9 13 17
#5    Ana  2  6 10 14 18
#6   John  2  6 10 14 18
#7  Pedro  2  6 10 14 18
#8   Joan  2  6 10 14 18
#9    Ana  3  7 11 15 19
#10  John  3  7 11 15 19
#11 Pedro  3  7 11 15 19
#12  Joan  3  7 11 15 19
#13   Ana  4  8 12 16 20
#14  John  4  8 12 16 20
#15 Pedro  4  8 12 16 20
#16  Joan  4  8 12 16 20
#-----------------------------------------------------------
#19- Now create a new data.frame() called df with students vector and m1 matrix. What difference do you see with the previous matrix?
#df = data.frame(students,matrixOne) #There are four copies in the merged matrix

#df
#  students X1 X2 X3 X4 X5
#1      Ana  1  5  9 13 17
#2     John  2  6 10 14 18
#3    Pedro  3  7 11 15 19
#4     Joan  4  8 12 16 20
#-----------------------------------------------------------
#20- create a new vector with the labels "name", "age", "weight", "bp", "rate", "test". Now use colnames() to set the colnames attribute of our data frame df. Show your final data frame
#columNames <- c("name", "age", "weight", "bp", "rate", "test")
#df <- setNames(df, columNames)

#df
#   name age weight bp rate test
#1   Ana   1      5  9   13   17
#2  John   2      6 10   14   18
#3 Pedro   3      7 11   15   19
#4  Joan   4      8 12   16   20
#-----------------------------------------------------------
#21- Calculate the mean of a vector with values (10,11,12)
#newVector <- c(10,11,12)
#mean(newVector)

#[1] 11
#-----------------------------------------------------------
#22- Now create a new function call new_mean that receives a vector as a parameter, then calculates the sum of the vector, the length of the vector and return the mean of the vector.
#new_mean = function(k)
#{
#  sumNum = sum(k)
#  lenNum = length(k)
#  return(sumNum/lenNum)
#}
#-----------------------------------------------------------
#23- Use sample() function to simulate a rolling dice. That is, randomly select four numbers between 1 and 6 with replacement.
#sample(1:6,4,replace=T)

#[1] 5 1 1 6
#-----------------------------------------------------------
#24- Simulate 50 flips of an unfair two-sided coin. The probabilities here are 0.7 for heads and 0.3 for tails. Use sample() to draw a sample of size 50. Store the results in variable flip. How would you test if the results follow the probability defined?
#flip <- sample(0:1, 50, replace = TRUE, prob=c(0.7, 0.3))

# [1] 1 0 0 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 0 1 0 0 1 0 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0
#-----------------------------------------------------------
#25- How would you generate 10 random numbers from a standard normal distribution with a mean of 150 and a standard deviation of 10?
#rnorm2 <- function(n,mean,sd) { mean+sd*scale(rnorm(n)) }
#r <- rnorm2(10,150,10)

#r
#          [,1]
# [1,] 160.4700
# [2,] 170.1556
# [3,] 156.5253
# [4,] 148.4426
# [5,] 142.5310
# [6,] 138.1192
# [7,] 147.5545
# [8,] 151.3128
# [9,] 145.6313
#[10,] 139.2576
#attr(,"scaled:center")
#[1] 0.2223214
#attr(,"scaled:scale")
#[1] 0.7028147
#-----------------------------------------------------------
#26- Now, how would you generate 100 sets of random numbers like the previous question? Save results in a variable called rp
#generator <- function(n,sets,mean,sd)
#{
#  newN <- n*sets
#  y <- mean+sd*scale(rnorm(newN))
#  y <- y[1:newN]
#  dim(y) <- c(10, sets)
#  return (y)
#}
#rp <- generator(10,10,150,10)

#rp
#          [,1]     [,2]     [,3]     [,4]     [,5]     [,6]     [,7]     [,8]     [,9]    [,10]
# [1,] 154.5664 157.2364 142.6314 155.7474 158.5943 141.3627 158.8037 152.3807 147.2185 161.5204
# [2,] 145.8581 147.7140 154.8208 148.7365 171.8816 141.5057 157.0120 153.0693 143.1096 141.2822
# [3,] 137.8270 165.8566 159.8136 152.0719 135.2790 131.0748 141.7633 134.4949 159.6432 146.6085
# [4,] 142.9638 137.5951 150.0076 153.1473 156.5679 150.9962 159.8652 150.9014 162.4373 149.8683
# [5,] 157.7915 168.0012 148.4120 150.6201 157.7839 152.0221 150.0382 138.7420 165.2412 132.1946
# [6,] 143.9822 150.7938 155.6239 162.2529 143.3688 133.5920 142.2101 136.1367 153.4763 139.8868
# [7,] 149.6697 155.7864 129.8198 151.5301 152.7151 166.5988 135.5509 138.1057 161.2684 147.6641
# [8,] 145.0132 154.6114 145.9087 142.2115 160.1712 159.9874 170.9295 157.4277 140.6126 151.1031
# [9,] 166.7317 140.0342 175.3627 146.3494 147.1924 143.0896 147.4720 135.9836 145.7455 143.9783
#[10,] 148.0248 161.6892 129.2247 147.6080 148.9013 150.5094 143.1733 168.5379 156.6800 141.0215
#-----------------------------------------------------------
#27- Use colMeans() function to find the mean of each column of rp and plot a histogram
#rp <- matrix(c(rnorm(1000,150,10)), nrow=100, ncol=10)
#colMeans(rp, na.rm=FALSE, dims=1)
#hist(rp)

#a histogram
#-----------------------------------------------------------
#28- Create a vector X with 10 values and calculate the cumulative sums for this vector using a for loop.
#X <- c(sample(1:100,10))
#total <- 0
#counter <- 0
#for (i in X)
#{
#    total <- total + i
#    counter <- counter + 1
#}
#cat(total/counter)

#52.4
#-----------------------------------------------------------
#29- Create two vectors, Z1 and Z2. Z1 is a vector of 20 elements filled with 20 random numbers from a standard normal distribution. Z2 is a string of 20 zeros. Design a for loop that counts from 1 to 20. For each value, it has to evaluate if the value is greater than 0. For all those values, it must write a 1 in the same position of the vector Z2. For lower than 0 values it must write a -1. Is it possible to do the same thing using which()? How would you do it?
#z1 <- c(rnorm(20))
#z2 <- c(rep(0,20))

#for (i in 1:length(z1))
#{
#    if (z1[i] >= z2[i])
#    {
#        z2[i] = 1
#    }
#    else if (z1[i] < z2[i])
#    {
#        z2[i] = -1
#    }
#}

#using Which:
#Z3 <-rnorm(20,0,1)
#Z4 <- rep(0,20)
#Z4 [which(Z3 > 0)] = 1
#-----------------------------------------------------------
#30- Now we are going to import a data file:plants.csv and use read.table() function to store the new table in an object called plants
#plants <- read.table("plants.csv", sep = ",",  header = TRUE)
#-----------------------------------------------------------
#31- How do you find the rows and columns of the variable plants? And the size in bytes?
#nrow(plants)
#   [1] 5166
#ncol(plants)
#   [1] 10
#object.size(plants)
#   933520 bytes
#-----------------------------------------------------------
#32- How would you see the first rows of the experiment?
#head(plants,1)

#Scientific_Name Duration Active_Growth_Period Foliage_Color pH_Min pH_Max Precip_Min Precip_Max Shade_Tolerance
#1     Abelmoschus     <NA>                 <NA>          <NA>     NA     NA         NA         NA            <NA>
#  Temp_Min_F
#1         NA
#-----------------------------------------------------------
#33- What information is summary() providing when applied to the experiment variable? What NA means? What information is str() providing?
#summary() - Provides a summary of the variable, changes with variable types but displays generally useful information
#NA - Missing Data
#str() - Compact information about the variable in R
#-----------------------------------------------------------------------------------------------
#34-	Create	a	function	to	calculate	the	minimum	Temp_Min_F	and	the	average	Precip_Min	of	the	table	plants
#minTempPrecAve <- function(plants){
#  minim <- min(plants[,10], na.rm=T) #considers NA for values, so need to remove using na.rm
#  meany <- mean(plants[,8], na.rm=T)
#  return(minim);
#}
#minTempPrecAve(plants)

#[1] -79





#------------------------------------------------------------------------------------------------------
#-----------------------------Battleship Program-------------------------------------------------------
#------------------------------------------------------------------------------------------------------





#------------------------Making the mapGenerator--------------------------
#This functions creates a map and then populates it with boats before returning
#the finished map to the caller.
#--------------------------------------------------------------------------
mapGenerator <- function(ships){
    #------------------------Non-refreshing variables--------------------------
    #This area is for the maps and other variables that need to be stored indepedant
    #of the loop. The map cannot be refreshed/same with the total boats made
    #--------------------------------------------------------------------------

    map = matrix(c(0),ncol=20,nrow=20)
    makingShips <- T
    totalShips <- 0
    failRate <- 0

    #------------------------The Big While loop--------------------------------
    #This is the main part of the function, the goal of it is to loop until the
    #program has failed 15 times in a row or that the amount of boats that the
    #user wants made has been satisfied.
    #--------------------------------------------------------------------------

    while(makingShips==T)
    {
        tempShipLocationsX <- 0
        tempShipLocationsY <- 0
        tempShipShape <-c()
        breaker <- 0


        #------------------------Right or Down?------------------------------------
        #My program has a 50/50 chance when assigning the initial point to make it a
        #right or a down going program, as I didn't see a reason to write code for a
        #ship going up or left. The code will randomly produce a number between
        #1:20 or 1:14, as 1:14 will allow the program full ability to place the ships
        #without going over any of the sides
        #--------------------------------------------------------------------------
        shipSide <- sample(0:1,1,replace=T)


        if (shipSide == 0) #Down
          {
            tempShipLocationsX <- sample(1:14,1)
            tempShipLocationsY <- sample(1:20,1)

            #------------------------Testing for space--------------------------------
            #The first part of the while loop test to see if there are any occupied
            #spaces within six spaces of the initial point in the chosen direction.
            #if there are any take spaces the program triggers a point of failRate and
            #initializes the breaker, which fails the assignment part of the program
            #--------------------------------------------------------------------------

            for(k in 0:6){
              if((map[(tempShipLocationsX+k),tempShipLocationsY] == 1)){
                breaker <- 1
                failRate <-failRate + 1
              }
            }

            #------------------------Assignment---------------------------------------
            #This part just checks to see if the program has succeded or failed in the
            #previous part and then assigns the checked spaces to a new boat.
            #--------------------------------------------------------------------------

            if(breaker == 0){
              for (k in 0:6){
                map[(tempShipLocationsX+k),tempShipLocationsY] <- map[(tempShipLocationsX+k),tempShipLocationsY] + 1
              }
              totalShips <- totalShips + 1
              failRate <-0
            }


        }

        #------------------------Going the Right way-------------------------------
        #This is a mirrir from the last part that is similar but instead tries to make
        #ships going from right of the initial assigned point
        #--------------------------------------------------------------------------


        if (shipSide == 1) #Down
          {
            tempShipLocationsX <- sample(1:20,1)
            tempShipLocationsY <- sample(1:14,1)

            for(k in 0:6){
              if((map[(tempShipLocationsX),tempShipLocationsY+k] == 1)){
                breaker <- 1
                failRate <-failRate + 1
              }
            }

            if(breaker == 0){
              for (k in 0:6){
                map[(tempShipLocationsX),tempShipLocationsY+k] <- map[(tempShipLocationsX),tempShipLocationsY+k] + 1
              }
              totalShips <- totalShips + 1
              failRate <-0
            }


        }

        #------------------------End Conditions------------------------------------
        #The final part goes over the end conditions of the program, I have two.
        #The first is to make the nessessary number of ships, the second is to have
        #too many failures in a row (if for instance the input was incredibly high)
        #--------------------------------------------------------------------------

        if(failRate == 50){
            makingShips <- F
        }
        if(totalShips >= ships){
            makingShips <- F
        }
      }

      #End of while loop, returns the map
      return (map)
}

#------------------------Shots Fired---------------------------------------
#This function takes in the matrix, makes some random variables and test if
#it hits any ships. It then returns a string with the results of the engagement
#--------------------------------------------------------------------------

shotsFired <-function(boats){
  map <- mapGenerator(boats)
  shotsX <- c(sample(20:20,6))
  shotsY <- c(sample(20:20,6))
  results <- ("Results: ")

  for(k in 1:6){
      if (map[shotsX[k],shotsY[k]] == 1){
        results <- paste(results, "Hit, ")
      }
      else{
        results <- paste(results, "Miss, ")
      }
  }

  #-----------------------print out the results------------------------------
  #All this part does is print out the results to a text file
  #--------------------------------------------------------------------------

  write.table(map, file=("BattleshipGrid.txt"), row.names=FALSE, col.names=FALSE)

  return (results)

}

#-----------------------Call the Function----------------------------------
#Just need to call the function once, you can put any number of boats that you
#want in the function
#--------------------------------------------------------------------------
shotsFired(8)





#

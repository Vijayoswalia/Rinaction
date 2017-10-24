
# create a vector of 40 values at equal interval between 10 and 200; use integer values
set.seed(12345)
v <- rnorm()
v
?runif

# use this vector to Create the matrix 5 x 8 : columnwise
# Return the product of each of the rows
# Return the sum of each of the columns


# Return a new matrix whose entries are those of 'matrix values' modulo 10


# How many odd nos each column has


# View the data set iris

# get the mean of the first 4 variables, by species





Q2:
  # Environment
  # create a new environment
  e <- new.env()
  # two environment variables, a - matrix and b as an array
  e$a <- matrix(1:12,nrow=4)
  e$b <- array(c(1:3*4*2),dim=c(3,4,2))
  # Find the mean of the variables
  
  
  #check the class of each object
  
  Q3:
    # create a list with 2 elements 1:20 and 55:100 and mpg and weight coln of mtcars dataset
    
    
    # Find the sum of the values in each element
    
    
    # print the values in Vector form
    
    
    
    Q4. Sweep
  
  Sweep : Return an array obtained from an input array by sweeping out a summary statistic.
  sweep(x, MARGIN, STATS, FUN = "-", check.margin = TRUE, .)
  Study data set : attitude
  survey of the clerical employees of a large financial organization, the data are aggregated from the questionnaires of the approximately 35 employees for each of 30 (randomly selected) departments. The numbers give the percent proportion of favourable responses to seven questions in each department.
  Check dimensions and view the data set : 
    A data frame with 30 observations on 7 variables. The first column are the short names from the reference, the second one the variable names in the data frame
  # Calculate median value of each column
  ......
  # Subtract median of each column to respective of value of that column
  ......
  #Create an array of values 1 to 24 with 3 dimension - 4,3,2
  ......
  #Subtract 5 from each row dimension values
  ......
  # Find minimum of each row dimension values
  ......
  #[1] 1 2 3 4
  # subtract this minimum value from each row dimension values
  ......
  # subtract median value across row & col dimensions
  sweep(A, 1:2, apply(A, 1:2, median))
  # Solution
  , , 1
  
  [,1] [,2] [,3]
  [1,]   -6   -6   -6
  [2,]   -6   -6   -6
  [3,]   -6   -6   -6
  [4,]   -6   -6   -6
  
  , , 2
  
  [,1] [,2] [,3]
  [1,]    6    6    6
  [2,]    6    6    6
  [3,]    6    6    6
  [4,]    6    6    6
  
  
  ## warnings when mismatch  # understand them
  sweep(A, 1, 1:3)  # STATS does not recycle
  sweep(A, 1, 6:1)  # STATS is longer
  
  
  ## exact recycling:
  sweep(A, 1, 1:2)  # no warning
  
  
  
  
  Q: 5: cast and melt (Reshape2)
  
  
  require(reshape2)  # another way to add library
  # create data frame
  (x = data.frame(subject = c("Lalit", "Vijay"),    time = c(1,1), age = c(33,NA),   weight = c(80, NA),  height = c(2,2)) )
  
  #  subject time age weight height
  1   Lalit      1        33      80       2
  2   Vijay     1        NA     NA      2
  
  ....
  
  
  there are only id variables and a value, where the id variables also identify what measured variable the value represents. Then each row will represent one observation of one variable. This operation, called melting, produces molten data and can be obtained with the melt function of the R package reshape2
  # present an output like
  subject time variable value
  1	Lalit	1  	age	33
  2	Vijay	1  	age	NA ..
  
  
  All measured variables must be of the same type, e.g., numeric, factor, date. This is required because molten data is stored in a R data frame, and the value column can assume only one type.
  # do it again after removing NA values
  subject time variable value
  1   Lalit    1      age    33
  3   Lalit    1   weight    80
  5   Lalit    1   height     2
  6   Vijay    1   height     2
  ......
  # Now reshape the molten data into a data frame or vector/ matrix/ arrag
  into a data frame using dcast function  or
  into a vector/matrix/array using the acast function. 
  The basic arguments of *cast is the molten data and a formula of the form x1 + x2 ~ y1 + y2. The order of the variables matter, the first varies slowest, and the last fastest. There are a couple of special variables: "..." represents all other variables not used in the formula and "." represents no variable, so you can do formula = x1 ~ .
  
  time subject age weight height
  1    1   Lalit  33     80      2
  2    1   Vijay  NA     NA      2
  
  
  subject time age weight height
  1   Lalit    1  33     80      2
  2   Vijay    1  NA     NA      2
  
  
  ......
  ......
  subject age weight height
  1   Lalit  33     80      2
  2   Vijay  NA     NA      2
  
  
  
  
  ......
  
  
  
  
  
  
  , , age
  1
  Lalit 33
  Vijay NA
  , , weight
  1
  Lalit 80
  Vijay NA
  , , height
  1
  Lalit 2
  Vijay 2
  # use acast ?
  ......
  
  
  View the data set airquality : Perform operations of cast and melt in the data set airquality
  
  ......
  
  
  Q6: Merge
  
  Merge two data frames by common columns or row names, or do other versions of database join operation
  rollno = c(17010,17045,17012,17087,17057,17056,17032,17084,17078,17018,17013)
  sname = c('Achal Kumar','Apoorva Karn','Goldie Sahni','Hitesh Mann','Kaustav Chatterjee','Meena Srisha Valavala','Rashmi Ranjan Mangaraj','Shruti Sinha','Shubham Pujan','Vijay Pal Singh','Lalit Sahni')
  course =  c('PGDDS','PGDDS','PGDDS','PGDDS','MSCDS','PGDDS','MSCDS','PGDDS', 'PGDDS','PGDDS','PGDDS')
  
  gender = c('M','F','M','M','M','F','M','F','M','M','M')
  exp =  c(3,3.5,14,5,0,1,1,15,1,3,8) # Experience
  hostel =  c(FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,TRUE)
  # create two data frames - rollno to be in both the data frame
  df1 - rollno, sname, course
  df2 - rollno, gender, exp, hostel
  #Merge the data frame : automatically
  ......
  # Create DF of marks of subject1
  ID = c(17010,17045,17012,1)
  SEX = c('M','F','M','M')
  SUB1 = c(50,60, 70,80)
  (df3 = data.frame(ID, SEX, SUB1))
  #produce output 
  rollno        sname course gender SEX SUB1
  1  17010  Achal Kumar  PGDDS      M   M   50
  2  17012 Goldie Sahni  PGDDS      M   M   70
  3  17045 Apoorva Karn  PGDDS      F   F   60
  
  ..........
  #use to columns to join: Solution given
  
  df1$gender = gender
  merge(df1, df3, by.x = c('rollno','gender'), by.y=c('ID','SEX'))
  
  
  # try this commands and explain 
  merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all=TRUE)
  merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all=FALSE)
  merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all.x=TRUE)
  merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all.y=TRUE)
  #Which one is Natural, Full Outer, Left Outer, Right Outer ?
  
  Q7: Stack
  
  Stacking vectors concatenates multiple vectors into a single vector along with a factor indicating where each observation originated. Unstacking reverses this operation
  Use this data 
  classA = c(10,14,15) ; classB = c(20,25,27); classC = c(13,15,17) in a data frame - classmarks
  # produce an output like this
  values    ind
  1     10 classA
  2     14 classA
  3     15 classA
  4     20 classB
  5     25 classB
  6     27 classB
  7     13 classC
  8     15 classC
  9     17 classC
  ..........
  
  
  # produce an output only for classA and classC
  values    ind
  1     10 classA
  2     14 classA
  3     15 classA
  4     13 classC
  5     15 classC
  6     17 classC
  ..........
  
  
  # use unstack command to do opposite and produce output like this
  classA classC
  1     10     13
  2     14     15
  3     15     17
  ..........
  
  
  
  Q8: By
  
  by(data, INDICES, FUN, .) : data - The full set of data, e.g. a vector or data.frame.; INDICES - A vector describing how the data subsets are to be constructed (e.g. a factor vector). 
  by function returns a list, where each list item represents the results for a particular subset of the data.
  # find the summary of all columns split by course (DS Students data frame - save with your RData file)
  ..........
  
  
  
  
  
  
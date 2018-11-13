source("http://tinyurl.com/rescale-R")


rescale(1:10)
# "!" flips the true false of an answer 
rescale2( c(1,5,"string"))
          
#write a both_na()function
(is.na(x) &is.na(y))
#find out how many T you have
sum(is.na(x)&is.na(y))
 both_na <- function(x,y){
   sum(is.na(x)&is.na(y))
 }
 both_na(x,y)
 #lets test the function
 x <- c(NA, NA, NA)
 y1 <- c(1,NA, NA)
 y2 <- c(1,NA, NA, NA)
 both_na (x,y1)
 both_na(x,y2)
 #this function is not what we want because it will recycle and give wrong results
 both_na2(x,y2)
 
 #"which" function will tell you which ones are true
 #next step
 # Simplify further to single vectors
 x <- df1$IDs
 y <- df2$IDs
 
 #tells us which values are present in both vectors
intersect(x,y)
#we want to know the position of these values
inds <- x %in% y
x[inds]
x[x %in% y]
y[y %in% x]

df1[df1$IDs %in% df2$IDs,]
df2[df2$IDs %in% df1$IDs,]

install.packages("flexdashboard")
 
 
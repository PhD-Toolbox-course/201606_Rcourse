# Rscript for PhD Course
# Pratical session

############### EXCEL COMPARISON #####################

# Matrix for comparison with Excel
x <- matrix(rnorm(8000), nrow = 1000)
head(x)

# Histogram of every column
par(mfrow = c(3,3))
for (i in 1:9){
  hist(x[,i], breaks = 100, xlab = paste0("Data ", i))
}

# Plot mean of the first 4 column against the mean of the last 4 column in log2 scale
par(mfrow = c(1,1))
plot(log2(rowMeans(x[,1:4])), log2(rowMeans(x[,5:8])))

# Find the min - max - mean - median for every column
summary(x)

## Simple operation
# Addition
1 + 1
# Subtraction
5 - 4
# Multiplication
3 * 8
# Division
7 / 2
# Square root
sqrt(25)
# Power
3^4
# Logaritm
log2(4)

#============================
## Variables
# Assign variable
a <- 10
a
class(a)
# Make calculation
a + 1
a / 2
a <- a - 1
a
sqrt(a)
a^2

#============================
## Vectors
# Create a simple vector
x <- c(1,2,3,4,5)
x
# Exploration
class(x)
is.vector(x)
length(x)
sum(x)
mean(x)
median(x)
x^2
sqrt(x)
# Create a new vector
y <- c(2,3,4,5,6)
# Vector operation
x + y
x * y
x / y
# Vector subsetting
length(x) # I know how long is, but if I only want the 4th element
x[4]
y[4]
x[1:3]

# QUESTION
# If I want to have always the element before the last of a vector (line of code)
...

# If the vector have diferent length
y <- y[1:4]
y
x + y # warning message
x * y
# QUESTION
# Can you guess how I can add 3 element (6,7,8) to the x vector?
...

x + y # no more warning message

# EXERCISE
# Define a vector of 100 element (from 1 to 100) and remove all the odd number
# USE seq()
# ?seq
a <- seq(1,100,by=1)
a[seq(1,50,1)*2]

# SWIRL

# DATAFRAMES
df <- data.frame(x = rep(c("A","B"),each = 4), y = seq(1,8,1), z = rnorm(8, 10,.1))
# run the above command more time! Introduce the concept of seed
set.seed(10)
df <- data.frame(x = rep(c("A","B"),each = 4), y = seq(1,8,1), z = rnorm(8, 10,.1))
set.seed(10)
data.frame(x = rep(c("A","B"),each = 4), y = seq(1,8,1), z = rnorm(8, 10,.1))
# Summary
summary(df)
dim(df)
# Remove/add
df[-8,]
df[,-2]
cbind(df, w = c(100,101,102,103,104,105,106,107))
rbind(df[,2:3], C = c(9, 11))

# Subsetting
df$x
df[,1]
df[,1:2]
df[,c(1,3)]
df[1:3,1:2]
df[df$x == "A", c(1,3)]
df[df$x == "A" & df$z > 10, c(1,3)]
df[df$x == "A" & df$z > 10 & df$y <= 3, ]

# EXERCISE
# Create a data.frame with 1000 rows and 6 column with random values 
# Imagine a expression matrix with 2 condition and 3 replicate per condition
# Add to this dataframe a column with each sample mean (and standard deviation)
set.seed(100)
df2 <- data.frame(x1 = rnorm(1000,10,.1),x2 = rnorm(1000,10,.2), x3 = rnorm(1000,10,.1), y1 = rnorm(1000,11,.1), y2 = rnorm(1000,11,.1), y3 = rnorm(1000,12,.3))
df2 <- cbind(df2, meanX = rowMeans(df2[,1:3]), meanY = rowMeans(df2[,4:6]), sdX = apply(df2[,1:3],1,sd), sdY = apply(df2[,4:6],1,sd))


# READ TABLE
x <- read.table()







############### EXCEL COMPARISON #####################

# Matrix for comparison with Excel
x <- matrix(rnorm(8000), nrow = 1000)
head(x)

# Histogram of every column
par(mfrow = c(3,3))
for (i in 1:8){
  hist(x[,i], breaks = 100, main = paste0("Data ", i))
}

# Plot mean of the first 4 column against the mean of the last 4 column in log2 scale
par(mfrow = c(1,1))
plot(log2(rowMeans(x[,1:4])), log2(rowMeans(x[,5:8])))

# Find the min - max - mean - median for every column
summary(x)

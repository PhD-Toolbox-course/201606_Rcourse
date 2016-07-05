# Load Library
library(readr)

# Import dataset
x <- read_csv("~/Documents/Courses/201606_Rcourse/resources/dataset4.csv")

# Log2 transformation
x[,2:11] <- log2(x[,2:11])

# Add new columns: mean and sd
xx <- cbind(x, meanC = rowMeans(x[,2:7]), meanT = rowMeans(x[,8:11]), sdC = apply(x[,2:6], 1, sd), sdT = apply(x[,7:11], 1, sd))

# Filter out all the row with sd below 0.25
xxx <- xx[xx$sdC < 0.25 & xx$sdT < 0.25,]

##############
#  PLOTS
##############
# Boxplot
boxplot(as.matrix(x[,2:11]), main = "Boxplot", xlab = "Sample names", ylab = "Expression", col = rep(c("#0046B2", "#F0E442"), each = 5))

# Histogrm 
par(mfrow = c(1,2))
hist(xxx$meanC, breaks = 100, main = "Histogram of\nmeanC", xlab = "meanC", ylim = c(0,30), col = rainbow(100))
box()
hist(xxx$meanT, breaks = 100, main = "Histogram of\nmeanT", xlab = "meanY", ylim = c(0,30), col = rainbow(100))
box()

# Scatterplot
par(mfrow = c(2,1))
plot(x = xxx$meanC, y = xxx$meanT, pch = 16, main = "Scatterplot between\nmeanC and meanT", xlab = "meanC", ylab = "meanT")
plot(x = xxx$meanC, y = xxx$meanT, pch = 16, main = "Scatterplot between\nmeanC and meanT", sub = "Color code for gene > 20", xlab = "meanC", ylab = "meanT", col = ifelse((xxx$meanC>20 & xxx$meanT>20), "#F0E442", "#0046B2"))

# Heatmap
heatmap(as.matrix(x[,2:11]))

# Hclust
par(mfrow = c(1,1))
plot(hclust(dist(t(x[,2:11]))))

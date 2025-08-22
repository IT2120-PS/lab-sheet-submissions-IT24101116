setwd("C:/Users/it24101116/Desktop/IT24101116_lab04")
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
fix(branch_data)
attach(branch_data)

boxplot(Sales_X1,main = "Box plot for sales",outline = TRUE,outpch = 8, horizontal = TRUE)

summary(Advertising_X2)
IQR(Advertising_X2)
get.outliers<- function(z){
  q1<- quantile(z)[0.25]
  q3 <- quantile(z)[0.75]
  iqr <- q1 -q3
  
  ub <- q3 +1.5 * iqr
  lb <- q1 - 1.5 *iqr
  
  print(paste("Upper bound =", ub ))
  print(paste("lower  bound =", lb ))
  print(paste("outliers: ", paste(sort(z[z<lb | Z<ub]), collapse =  " ")))
}

get.outliers(Sales_X1)
get.outliers(Advertising_X2)
get.outliers(Years_X3)

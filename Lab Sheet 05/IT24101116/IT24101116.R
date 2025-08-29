setwd("/Users/admin/Desktop/IT24101116")
Delivery_Times <- read.table("Exercise - Lab 05.txt",header=TRUE, sep = ",")
attach(Delivery_Times)

View(Delivery_Times)
names(Delivery_Times) <- c("x1")
attach(Delivery_Times)
histogram <- hist(x1,main="Histograms for Number ",breaks =seq(20,70,length = 9),right=TRUE)

freq <- histogram$counts
cumilative.freq <- cumsum(freq)
breaks <- round(histogram$breaks)
new<-c()
for (i in 1:length(breaks)){
  if(i==1){
    new[1]=0
  }else{
    new[i]= cumilative.freq[i-1]
  }
}

plot(breaks,new,type = '1',main = "cumilative Frequency polygon for sharehlders", xlab = "shareholders", ylab = "cumilative frequency", ylim = c(0, max(cumilative.freq)) )
cbind(upper = breaks, cumFreq = new)

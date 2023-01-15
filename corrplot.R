data=read.csv("E:/data1.csv",head=TRUE)
View(data)
data$Happiness.Score
names(data)<-c("Country","Region","Happiness_Rank","Happiness_Score",
               "Standard_Error","Economy","Family","Health","Freedom",
               "Corruption","Generossity",
               "Dystopia_Residual")
names(data)
data$Economy
str(data)
tail(data)
head(data)

library(corrplot)
num.cols<-sapply(data,is.numeric)
num.cols
cor.data<-cor(data[,num.cols])
cor.data
corrplot(cor.data,method = "color")
corrplot(cor.data,method = "color",tl.cex = 0.5)

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


library(ggplot2)
help.search("geom_",package = "ggplot2")
ggplot(data,aes(x=Health,y=Happiness_Score))+geom_point()
ggplot(data,aes(x=Health,y=Happiness_Score))+
  geom_point()+scale_x_continuous("Health")+
  scale_y_continuous("Happiness Score")+
  labs(title = "Happiness Score vs Health")+theme_bw()
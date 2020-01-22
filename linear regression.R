newspaper_data<-NewspaperData
newapaper_data1<-newspaper_data[,-1]
attach(newspaper_data1[,-1])

summary(newspaper_data[,-1])
dotchart(NewspaperData$daily,lables=rows.names(NewspaperData$Newspaper),cex=.7)

boxplot(sunday,col ="dodgerblue4")
boxplot(daily,col="dodgerblue4")
plot(daily,sunday,main = "Scatter Plot",
col="Dodgerblue",
col.main="Dodgerblue4",
col.lab="Dodgerblue4",
xlab="Daily Circulations",
ylab="Sunday Circulations",pch=20)

mymodel<-lm(sunday~daily,data=newspaper_data)
summary(mymodel)

test<-data.frame(daily=c(200,250,300))
pred<-predict(mymodel,newdata = test)
pred
pred<-predict(mymodel)
pred

#errors
finaldata<-data.frame(newspaper_data,pred,"Error"=newspaper_data$sunday-pred)
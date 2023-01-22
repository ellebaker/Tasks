setwd('')
data1<-read.csv('http://jonsmitchell.com/data/beren.csv', stringsAsFactors=F)
data2<-read.csv('http://jonsmitchell.com/data/cyrus.csv', stringsAsFactors=F)
write.csv(Data1, 'rawdata.csv', quote=F)
data1
length(data1)
nrow(data1)
ncol(data1)
colnames(data1)
head(data1)
data1[1,]
data1[2,]
data1[1:3,]
data1[1:3, 4]
data1[1:5, 1:3]
Feeds <- which(data1 [,9] == 'bottle')
berenMilk<- data1[Feeds,]
head(berenMilk)
Feeds <- which(data1[,'event'] == 'bottle')
Feeds <- which(data$event =='bottle')
dayID<-apply(data1, 1, function(x) paste(x[1:3], collapse='-'))
dateID<- sapply(dayID, as.Date, format = "%Y-%m-%d", origin = "2019-04-18")
data1$age<- dateID - dateID[which(data1$event == 'birth')]
head(data1)
beren2<-data1
beren3 <- beren2[order(beren2$age),]
write.csv(beren3, 'beren_new.csv',quote=F, row.names=FALSE)




Feeds<- which(beren3$event == 'bottle')
avgMilk <- mean(beren3$value[Feeds])
avgMilk
avgFeed<-tapply(beren3$value[Feeds], beren3$age[Feeds], mean)
avgFeed
varFeed<- tapply(beren3$value[Feeds], beren3$age[Feeds], var)
totalFeed<- tapply(beren3$value[Feeds], beren3$age[Feeds],sum)
numFeeds<- tapply(beren3$value[Feeds] , beren3$age[Feeds], length)
cor(beren3$value[Feeds], beren3$age[Feeds])
cor.test(beren3$value[Feeds], beren3$age[Feeds])
berenCor<- cor.test(beren3$value[Feeds], beren3$age[Feeds])
summary(berenCor)
berenANOVA<- aov(beren3$value[Feeds] ~ beren3$caregiver[Feeds])
boxplot( beren3$value[Feeds] ~ beren3$caregiver[Feeds], xlab= "who gave the bottle" , ylab = "amount of milk consumed (oz)")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalFeed)), totalFeed, type="b", pch=16, xlab="age in days", ylab = "ounces of milk")
abline(h=mean(totalFeed), lty=2, col='red')
pdf('r02b-totalMilkByDay.pdf', height = 4, width = 4)
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalFeed)), totalFeed, type="b", pch=16, xlab="age in days", ylab="ounces of milk")
abline(h=mean(totalFeed), lty=2, col="red")
dev.off()
setwd()
dir()
source("http://jonsmitchell.com/code/plotFxn02b.R")
r02b-cumulativeMilkByTime.pdf
data1
Weight <- which(data1[,'event'] == 'kg')
Weight



setwd('')
data1<-read.csv('http://jonsmitchell.com/data/beren.csv', stringsAsFactors=F)
data2<-read.csv('http://jonsmitchell.com/data/cyrus.csv', stringsAsFactors=F)
write.csv(Data1, 'rawdata.csv', quote=F)
data1
length(data1)
nrow(data1)
ncol(data1)
colnames(data1)
head(data1)
data1[1,]
data1[2,]
data1[1:3,]
data1[1:3, 4]
data1[1:5, 1:3]
Feeds <- which(data1 [,9] == 'bottle')
berenMilk<- data1[Feeds,]
head(berenMilk)
Feeds <- which(data1[,'event'] == 'bottle')
Feeds <- which(data$event =='bottle')
dayID<-apply(data1, 1, function(x) paste(x[1:3], collapse='-'))
dateID<- sapply(dayID, as.Date, format = "%Y-%m-%d", origin = "2019-04-18")
data1$age<- dateID - dateID[which(data1$event == 'birth')]
head(data1)
beren2<-data1
beren3 <- beren2[order(beren2$age),]
write.csv(beren3, 'beren_new.csv',quote=F, row.names=FALSE)


#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
setwd('')
data1<-read.csv('http://jonsmitchell.com/data/beren.csv', stringsAsFactors=F)
data2<-read.csv('http://jonsmitchell.com/data/cyrus.csv', stringsAsFactors=F)
write.csv(Data1, 'rawdata.csv', quote=F)
data1
length(data1)
nrow(data1)
ncol(data1)
colnames(data1)
head(data1)
data1[1,]
data1[2,]
data1[1:3,]
data1[1:3, 4]
data1[1:5, 1:3]
Feeds <- which(data1 [,9] == 'bottle')
berenMilk<- data1[Feeds,]
head(berenMilk)
Feeds <- which(data1[,'event'] == 'bottle')
Feeds <- which(data$event =='bottle')
dayID<-apply(data1, 1, function(x) paste(x[1:3], collapse='-'))
dateID<- sapply(dayID, as.Date, format = "%Y-%m-%d", origin = "2019-04-18")
data1$age<- dateID - dateID[which(data1$event == 'birth')]
head(data1)
beren2<-data1
beren3 <- beren2[order(beren2$age),]
write.csv(beren3, 'beren_new.csv',quote=F, row.names=FALSE)
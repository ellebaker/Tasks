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
Mass<-which(beren3$event == "trait_mass")
avgMass<- mean(beren3$value[Mass])
avgMass<- tapply(beren3$value[Mass], beren3$age[Mass], mean)
boxplot( beren3$value[Mass] ~ beren3$age[Mass], xlab="age in days", ylab="mass in kg")
varMass<-tapply(beren3$value[Mass], beren3$age[Mass],var)
totalMass<- tapply(beren3$value[Mass], beren3$age[Mass], sum)
numMass<- tapply(beren3$value[Mass], beren3$age[Mass], length)
cor(beren3$value[Mass], beren3$age[Mass])
cor.test(beren3$value[Mass], beren3$age[Mass])
summary(berenCor)
berenANOVA<- aov(beren3$value[Mass] ~ beren3$age[Mass])
boxplot( beren3$value[Mass] ~ beren3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab = "mass in kg")
abline(h=mean(totalMass), lty=2, col='red')
pdf('r02b-BerenAgeVsMass.pdf', height = 4, width = 4)
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab="mass in kg")
abline(h=mean(totalMass), lty=2, col="red")
dev.off()


Mass<- which(Data2[,9] == 'trait_mass')
cyrusMass <- data2[Mass,]
head(cyrusMass)
Mass<-which(data2[,'event'] == 'trait_mass')
Mass <-which(data2$event == 'trait_mass')
dayID<- apply(data2, 1, function(x) paste(x[1:3], collapse='-'))
dateID<- sapply(dayID, as.Date, format = "%Y-%m-%d", origin = "2019-04-18")
data2$age<- dateID - dateID[which(data2$event == 'birth')]
head(data2)
cyrus2<- data2
cyrus3<- cyrus2[order(cyrus2$age),]
write.csv(cyrus3, 'cyrus_new.csv', quote=F, row.names=FALSE)
Mass<- which(cyrus3$event == 'trait_mass')
avgMass<- mean(cyrus3$value[Mass])
avgMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], mean)
varMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], var)
totalMass<- tapply(cyrus3$value[Mass],cyrus3$age[Mass], sum)
numMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], length)
cor(cyrus3$value[Mass], cyrus3$age[Mass])
cor.test(cyrus3$value[Mass], cyrus3$age[Mass])
cyrusCor<- cor.test(cyrus3$value[Mass], cyrus3$age[Mass])
summary(cyrusCor)
cyrusANOVA<- aov(cyrus3$value[Mass] ~ cyrus3$age[Mass])
boxplot( cyrus3$value[Mass] ~ cyrus3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab = "mass in kg")
abline(h=mean(totalMass), lty=2, col='red')
pdf('r02b-CyrusAgeVsMass.pdf', height = 4, width = 4)
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab="mass in kg")
abline(h=mean(totalMass), lty=2, col="red")
dev.off()

data2
length(data2)
nrow(data2)
ncol(data2)
colnames(data2)
head(data2)
data2[1,]
data2[2,]
data2[1:3,]
data2[1:3, 4]
data2[1:5, 1:3]
Mass<- which(Data2[,9] == 'trait_mass')
cyrusMass <- data2[Mass,]
head(cyrusMass)
Mass<-which(data2[,'event'] == 'trait_mass')
Mass <-which(data2$event == 'trait_mass')
dayID<- apply(data2, 1, function(x) paste(x[1:3], collapse='-'))
dateID<- sapply(dayID, as.Date, format= "%Y-%m-%d", origin = "2019-04-18")
data2$age<- dateID - dateID[which(data2$event == 'birth')]
head(data2)
cyrus2<- data2
cyrus3<- cyrus2[order(cyrus2$age),]
write.csv(cyrus3, 'cyrus_new.csv', quote=F, row.names=FALSE)
Mass<- which(cyrus3$event == 'trait_mass')
avgMass<- mean(cyrus3$value[Mass])
avgMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], mean)
varMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], var)
totalMass<- tapply(cyrus3$value[Mass],cyrus3$age[Mass], sum)
numMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], length)
cor(cyrus3$value[Mass], cyrus3$age[Mass])
cor.test(cyrus3$value[Mass], cyrus3$age[Mass])
cyrusCor<- cor.test(cyrus3$value[Mass], cyrus3$age[Mass])
summary(cyrusCor)
cyrusANOVA<- aov(cyrus3$value[Mass] ~ cyrus3$age[Mass])
boxplot( cyrus3$value[Mass] ~ cyrus3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab = "mass in kg")
abline(h=mean(totalMass), lty=2, col='red')
pdf('r02b-CyrusAgeVsMass.pdf', height = 4, width = 4)
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=17, xlab="age in days", ylab="mass in kg")
abline(h=mean(totalMass), lty=2, col="red")
dev.off()

write.csv(data2, 'rawdata.csv', quote=F)
data2
length(data2)
nrow(data2)
ncol(data2)
colnames(data2)
head(data2)
data2[1,]
data2[2,]
data2[1:3,]
data2[1:3, 4]
data2[1:5, 1:3]
Mass<- which(data2[,9] == 'trait_mass')
cyrusMass <- data2[Mass,]
head(cyrusMass)
Mass<-which(data2[,'event'] == 'trait_mass')
Mass <-which(data2$event == 'trait_mass')
dayID<- apply(data2, 1, function(x) paste(x[1:3], collapse='-'))
dateID<- sapply(dayID, as.Date, format= "%Y-%m-%d", origin = "2019-04-12")
data2$age<- dateID - dateID[which(data2$event == 'birth')]
head(data2)
cyrus2<- data2
cyrus3<- cyrus2[order(cyrus2$age),]
write.csv(cyrus3, 'cyrus_new.csv', quote=F, row.names=FALSE)
Mass<- which(cyrus3$event == 'trait_mass')
avgMass<- mean(cyrus3$value[Mass])
avgMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], mean)
varMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], var)
totalMass<- tapply(cyrus3$value[Mass],cyrus3$age[Mass], sum)
numMass<-tapply(cyrus3$value[Mass], cyrus3$age[Mass], length)
cor(cyrus3$value[Mass],cyrus3$age[Mass])
cor.test(cyrus3$value[Mass],cyrus3$age[Mass])
cyrusCor<- cor.test(cyrus3$value[Mass],cyrus3$age[Mass])
summary(cyrusCor)
cyrusANOVA<- aov(cyrus3$value[Mass] ~ cyrus3$age[Mass])
boxplot( cyrus3$value[Mass] ~ cyrus3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
CyrusAgeVsMass<- plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab = "mass in kg")
abline(h=mean(totalMass), lty=2, col='red')
pdf('r02b-CyrusAgeVsMass.pdf', height = 4, width = 4)
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab="mass in kg")
abline(h=mean(totalMass), lty=2, col="red")
dev.off()
dev.on()


par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01, new=TRUE)
plot('r02b-BerenAgeVsMass.pdf', 'r02b-CyrusAgeVsMass.pdf', xlab="age in days",ylab="mass in kg")
par()


boxplot( beren3$value[Mass] ~ beren3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab = "mass in kg")
abline(h=mean(totalMass), lty=2, col='red')
pdf('r02b-BerenAgeVsMass.pdf', height = 4, width = 4)
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab="mass in kg")
abline(h=mean(totalMass), lty=2, col="red")
points(cyrus3$value[Mass]~cyrus3$age[Mass], beren3$value[Mass]~cyrus3$age[Mass])
plot(x,y1, type='b', pch=17, col"red", xlab="age in days", ylab= "mass in kg")
dev.off()
boxplot(cyrus3$value[Mass], cyrus3$age[Mass], xlab="age in days", ylab='mass in kg')
boxplot(beren3$value[Mass],beren3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", col="pink", pch=16, xlab="age in days", ylab="mass in kg")
points(cyrus3$value[Mass]~cyrus3$age[Mass],pch=17,col="green", xlab="age in days", ylab="mass in kg")
title("Beren and Cyrus Age Vs Mass", xlab="age in days", ylab="mass in kg")
abline(h=mean(totalMass), lty=2, col="red")
head(data2)
Mass<- which(data2[,9] == 'trait_mass')

points(beren3$value[Mass]~beren3$age[Mass],pch=16,xlab"age in days",ylab="mass in kg")

boxplot( beren3$value[Mass] ~ beren3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", col="pink", pch=16, xlab="age in days", ylab = "mass in kg")
points(cyrus3$value[Mass]~cyrus3$age[Mass], pch=17, col="green", xlab="age in days", ylab="mass in kg")
title("Beren and Cyrus Age Vs. Mass")
abline(h=mean(totalMass), lty=2, col='red')
pdf('r02b-BerenAgeVsMass.pdf', height = 4, width = 4)
x<-beren3$value[Mass]
y<-beren3$age[Mass]
x2<-cyrus3$value[Mass]
y2<-cyrus3$age[Mass]
plot(x,y, cex=1, pch=16, xlab="Age in Days", ylab="Mass in KG", col="pink")
points(x2, y2, cex=1, pch=16, col="green")



boxplot( beren3$value[Mass] ~ beren3$age[Mass], xlab="age in days", ylab="mass in kg")
par(las=1, mar=c(5,5,1,1), mgp=c(2,0.5,0), tck=-0.01)
plot(as.numeric(names(totalMass)), totalMass, type="b", pch=16, xlab="age in days", ylab = "mass in kg", col="pink")
points(cyrus3$value[Mass],cyrus3$age[Mass], pch=16, col="green")
title("Beren and Cyrus Age Vs. Mass")
legend(1000, 6, legend=c("Beren", "Cyrus"), col=c("pink", "green"), lty=1:1, cex=0.8,title="Kids", text.font=4,bg="yellow")
       
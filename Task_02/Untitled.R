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

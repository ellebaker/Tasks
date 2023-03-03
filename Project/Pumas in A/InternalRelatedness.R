#Inbreeding
IR <- read.delim("InternalRelatedness.txt")
attach(IR)

#Testing differences among populations
summary(lm(ir~population))


#Testing subpopulation differences 
sub<-aov(ir~subpop)
summary(sub)
TukeyHSD(sub)




#Alleles
alleledata <- read.delim("TemporalGeneticData.txt")
library(lme4)
attach(alleledata)
library(lsmeans)
loc<-as.factor(loc)
time2<-as.factor(time2)

modelHe<-lmer(expectedcorrected~time2*pop+(1|loc) + (1|pop:loc) + (1|time2:loc))
summary(modelHe)
lsmeans(modelHe, pairwise~pop*time2, adjust = "tukey")

modelAr<-lmer(fstat~pop*time2+(1|loc) + (1|pop:loc) + (1|time2:loc))
summary(modelAr)
lsmeans(modelAr, pairwise~pop*time2, adjust = "tukey")






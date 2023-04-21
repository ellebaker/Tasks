setwd('~/Desktop/Evolution/Tasks/Task_08')
#questions 1-3

library(phytools)
trees<- list()
births<- c()
fractions <- c()
random<- c()
random2 <-c()
treelist<- c()
 for(i in 1:100) {
   births[i]<- runif(1)
   fractions[i]<- runif(1)
   trees[[i]]<-pbtree(n=100, b=births[i], d=births[i]*fractions[i])
   random[[i]]<- births[i]
   random2[[i]]<- (fractions[i])
   treelist[[i]]<- mean(trees[[i]]$edge.length)
 }   
#question 4

div_rate <- sapply(trees, function(x) length(x$tip.label))
log_tips<- log(sapply(trees, function(x) length(x$tip.label)))
library(ggplot2)
ggplot(data = data.frame(div_rate, log_tips), aes(x= log_tips, y=div_rate))+
  geom_point()+
  xlab("Log Number of Tips")+
  ylab("Net Diversification")+
  ggtitle("Net Diversification vs. Log Number of Tips")
dev.off()
#question 5

speciation_rate<- sapply(births, function(x)x)
avg_branchlength<- sapply(trees, function(x) mean(x$edge.length, na.rm=TRUE))
ggplot(data = data.frame(speciation_rate, avg_branchlength), aes(x= speciation_rate, y=avg_branchlength))+
  geom_point()+
  xlab("Speciation Rate")+
  ylab("Average Branch Length")+
  ggtitle("Speciation Rate vs. Average Branch Length")
dev.off()
#question 6, -0.393624

cor(speciation_rate, avg_branchlength)
#question 7

largest_tree <- trees[[which.max(sapply(trees, length))]]
Tree<- largest_tree
plot(Tree)
dev.off()
rates<- c()
traits<- list()
for( i in 1:100){
  rates[i]<- runif(1)
  traits[[i]]<- fastBM(tree=Tree, sig2=rates[i])
}
#question 8
mean_traits<-sapply(traits, mean)
cor(mean_traits, rates)
#correlation is -0.09032614
plot(rates, mean_traits, xlab="Rates", ylab="Mean Traits")
#question 9

var_traits<- sapply(traits, var)
cor(var_traits, rates)
#correltation is 0.7514031
plot(rates, var_traits, xlab="Rates", ylab="Variance of Traits")
dev.off()
#question 10
cor(traits[[1]], traits[[2]])
#correlation is 0.3560733
traitMat<- cbind(traits[[1]], traits[[4]])
plot(traitMat)
dev.off()

#Extra credit
phylomorphospace(Tree,traitMat, xlab="Trait 1", ylab="Trait 2")
pdf("08_ec.pdf")

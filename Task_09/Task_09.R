setwd('~/Desktop/Evolution/Tasks/Task_09')
library(diversitree)
transition_0to1<- 0.1
transition_1to0<-0.1
speciation_0<-0.2
extinction_0<-0.1
speciation_1<-0.2
extinction_1<-0.1
maxN<-1e3
maxT<-50
Pars<- c(speciation_0, speciation_1, extinction_0, extinction_1, transition_0to1, transition_1to0)
Pars2<- c(speciation_0, extinction_0, transition_0to1, max.taxa=maxN, max.t=maxT)
Pars3<- c(speciation_1, extinction_1, transition_1to0,max.taxa=maxN, max.t=maxT)
simTree<-tree.bisse(Pars, max.taxa=maxN, max.t=maxT)
str(simTree)
?tree.bisse
??diversitree
stateTable<-table(simTree$tip.state)
stateTable
stateTable/sum(stateTable)
hist(stateTable/sum(stateTable))
plot(Pars2)
plot(Pars3)
plot(Pars2, Pars3)
simTree

phy<- tree.bisse(Pars, max.taxa=50)
plot(simTree, show.node.label=F, label.offset=0.1, font=1, cex=0.75, no.margin=T)
plot(simTree, type="phylogram")
plot(phy)

plot((stateTable), xlab=c(100,200), ylab=c(0,1) )
dev.off()
?plot.phylo

plot(tree.bisse(Pars, max.taxa=Inf, max.t=Inf, include.extinct=FALSE, x0=NA))

speciation_1.r<-seq(0.1,0.9,0.1)
sim_results<- list()
for (i in seq_along(speciation_1.r)) {
  Pars[2]<-speciation_1.r[i] 
  simTree<-tree.bisse(Pars,max.taxa=maxN, max.t=maxT)
  sim_results[[i]]<-simTree
}
state_tables<-lapply(sim_results, function(tree)
table(tree$tip.state)/sum(tree$tip.state))
state_tables
df<- data.frame(speciation_1=speciation_1.r, tip_state_0=rep(0, length(speciation_1.r)),
                tip_state_1=rep(0, length(speciation_1.r)))
for(i in seq_along(sim_results)){
  state_table<- state_tables[[i]]
  df$tip_state_0[i]<- state_table[1]
  df$tip_state_1[i]<- state_table[2]
}
nona_df<-na.omit(df)
nona_df
ggplot(nona_df, aes(x=speciation_1))+
  geom_line(aes(y=tip_state_0, color="tip state 0"))+
  geom_line(aes(y=tip_state_1, color="tip state 1"))+
  scale_color_manual(values=c("tip state 0"="blue","tip state 1"="red"))+
  xlab("Speciation Rate for State 1")+
  ylab("Tip State Frequency")+
  ggtitle("Effect of Varying Species on Tip State Frequency")
  theme_bw()+
  labs(color= "Tip States")










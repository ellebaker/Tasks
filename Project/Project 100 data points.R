setwd('~/Desktop/Evolution/Tasks/Project')
#Affect of habitat fragmentation on inbreeding in Puma concolor

#A Pumas
GustafsonEtAlGenotypes<- read.table('~/Desktop/Evolution/Tasks/Project/GustafsonEtAl_Genotypes.txt', sep="\t", header=T)
InternalRelatedness<- read.table('~/Desktop/Evolution/Tasks/Project/InternalRelatedness.txt')
InternalRelatednessR<- read.table('(~/Desktop/Evolution/Tasks/Project/InternalRelatedness.R', sep="/", header =T)
A_Pumas<-read.table('~/Desktop/Evolution/Tasks/Project/Pumas in A/TemporalGeneticData.txt', sep="", header=TRUE)
head(GustafsonEtAlGenotypes)
head(InternalRelatedness)
head(A_Pumas)

#B Pumas
BrazilPuma<- read.csv(' ~/Desktop/Evolution/Tasks/Project/B Pumas.csv', sep="/", header=T)
BrazilPuma<- read.csv(' ~/Desktop/Evolution/Tasks/Project/Pumas in B/B Pumas.csv')
library(readr)
B_Pumas <- read_csv("Pumas in B/B Pumas.csv")
head(B_Pumas)

#C Pumas
library(adegenet)
C_pumas<-read.structure('~/Desktop/Evolution/Tasks/Project/Pumas in C/Structure_BZ Felids_Wultsch_et_al.str', n.loc=14, n.ind=108, onerowperind = FALSE, NA.char = "-9")
C_pumas<-read.table('~/Desktop/Evolution/Tasks/Project/Pumas in C/Structure_BZ Felids_Wultsch_et_al.str', sep="\t")

library(phytools)
Cpumas <- read.tree('~/Desktop/Evolution/Tasks/Project/Pumas in C/Cytb_BZ_Felids.nex')

#D Pumas
D_Pumas<- read.table('~/Desktop/Evolution/Tasks/Project/Pumas in D/Ernest-etal-Genotypes_PLosOne2014.txt', sep='/', header=TRUE)
head(D_Pumas)

#E Pumas
E_Pumas<- read.table('~/Desktop/Evolution/Tasks/Project/Pumas in E/Raw_RADseq_Data4.tar')
head(E_Pumas)

Puma_A <-read.delim(file.choose(' ~/Desktop/Evolution/Tasks/Project/Pumas /Puma A/Puma A.txt'), header=T,)
Puma_B <-read.delim(file.choose(' ~/Desktop/Evolution/Tasks/Project/Pumas /Puma B/Puma B.txt'), header=T,)
Puma_C <-read.delim(file.choose(' ~/Desktop/Evolution/Tasks/Project/Pumas /Puma C/Puma C.txt'), header=T,)
Puma_D <-read.delim(file.choose(' ~/Desktop/Evolution/Tasks/Project/Pumas /Puma D/Puma D.txt'), header=T,)
Puma<-c(Puma_A, Puma_B, Puma_C, Puma_D)

Ocelot_A <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Ocelots/Ocelot A/Ocelot 2A.txt'), header=T)
Ocelot_B <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Ocelots/Ocelot B/Ocelot B.txt'), header=T)
Ocelot_C <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Ocelots/Ocelot C/Ocelot C.txt'), header=T)
Ocelot_D <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Ocelots/Ocelot D/Ocelot D.txt'), header=T)
Ocelot<-c(Ocelot_A, Ocelot_B, Ocelot_C, Ocelot_D)

Jaguar_A <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Jaguars/Jaguar A/Jaguar A.txt'), header=T)
Jaguar_B <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Jaguars/Jaguar B/Jaguar B.txt'), header=T)
Jaguar_C <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Jaguars/Jaguar C/Jaguar C.txt'), header=T)
Jaguar_D <-read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Jaguars/Jaguar D/Jaguar D.txt'), header=T)
Jaguar<-c(Jaguar_A, Jaguar_B, Jaguar_C, Jaguar_D)

Lion_A<- read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Lions/Lion A/Lion A.txt'), header=T)
Lion_B<- read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Lions/Lion B/Lion B.txt'), header=T)
Lion_C<- read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Lions/Lion C/Lion C.txt'), header=T)
Lion_D<- read.delim(file.choose('~/Desktop/Evolution/Tasks/Project/Lions/Lion D/Lion D.txt'), header=T)
Lion<-c(Lion_A, Lion_B, Lion_C,Lion_D)

He<-c(0.456, 0.79, 0.568, 0.2325, 0.555, 0.64, 0.765, 0.66, 0.71, 0.57, 0.729, 0.62, 0.381, 0.352, 0.62)
Ho<-c(0.37,0.82, 0.606, 0.2275, 0.5475, 0.61, 0.675, 0.69, 0.73, 0.57, 0.685, 0.558, 0.317, 0.388, 0.65)
AR<-c(2.82, 8.89, 4.20, 2.00, 3.475, 4.6, 5.265, 4.50, 4.34, 3.36, 7.83, 3.92, 1.00, 2.22, 3.88)

Fstat<-(1-(He/Ho))
Fstat
x<-c(1:15)

HeP<-c(0.456, 0.79, 0.568, 0.2325)
HoP<-c(0.37,0.82, 0.606, 0.2275)
ARP<-c(2.82, 8.89, 4.20, 2.00) 
FstatP<-(1-(HeP/HoP))

HeO<-c(0.555, 0.64, 0.765)
HoO<-c(0.5475, 0.61, 0.675)
ARO<-c(3.475, 4.6, 5.265)
FstatO<-(1-(HeO/HoO))

HeJ<-c(0.66, 0.71, 0.57, 0.729)
HoJ<-c(0.69, 0.73, 0.57, 0.685)
ARJ<-c(4.50, 4.34, 3.36, 7.83)
FstatJ<-(1-(HeJ/HoJ))

HeL<-c( 0.62, 0.381, 0.352, 0.62)
HoL<-c(0.558, 0.317, 0.388, 0.65)
ARL<-c(3.92, 1.00, 2.22, 3.88)
FstatL<-(1-(HeL/HoL))

hist(AR, xlab="Allelic Richness", main="Allelic Richness In Puma, Ocelot, Jaguar, and Lion", col="blue")
AR=rnorm(100)
dev.off()
FstatP
plot(x, AR, xlab="numbers", ylab="Allelic Richness", main="Allelic Richness Among Big Cats", type="o", pch=20)

plot(1, type="n", xlim=c(1,4), ylim=c(0,1), xlab="Allelic Richness", ylab="F Statistic")

for (Puma){
  (lines(FstatP, type="o", col="pink", lwd=2, pch=20)
}

for (Ocelot){
  (lines((FstatO), type="o", col="blue", lwd=2, pch=20))
}

FstatP- -0.23243243,  0.03658537  0.06270627 -0.02197802
FstatO -0.01369863 -0.04918033 -0.13333333 0.2125
FstatJ  0.04347826  0.02739726  0.00000000 -0.06423358
FstatL. -0.11111111 -0.20189274  0.09278351  0.04615385
y<-c(-0.23243243, 0.03658537, 0.06270627, -0.02197802, -0.01369863, -0.04918033, -0.13333333, 0.04347826, 0.02739726, 0.00000000, -0.06423358, -0.11111111, -0.20189274, 0.09278351, 0.04615385)
x<-c(2.82, 8.89, 4.20, 2.00, 3.475, 4.6, 5.265, 4.50, 4.34, 3.36, 7.83, 3.92, 1.00, 2.22, 3.88)
plot(x,y, xlab="Allelic Richness", ylab="F Statistic", xlim="1,10", ylim="-1,1", pch=20)

#PLOT HERE
plot(x1,y1, xlab="Allelic Richness", ylab="F Statistic", main="Allelic Richness Vs F Statistic for 4 Species of Big Cats", xlim=c(0,10), ylim=c(-1,1), col="pink", pch=20)
points(x2,y2, col="blue", pch=20)
points(x3,y3, col="purple", pch=20)
points(ARL,FstatL, col="red", pch=20)
legend("topright", legend=c("Pumas","Ocelots", "Jaguars", "Lions"), col=c("pink", "blue","purple", "red"), pch=20)


col=c("pink","blue","purple", "red")
x1<-c(2.82, 8.89, 4.20, 2.00)
y1<-c(-0.23243243, 0.03658537, 0.06270627, -0.02197802)
x2<-c(3.475, 4.6, 5.265)
y2<-c(-0.01369863, -0.04918033, -0.13333333)
x3<-c(4.50, 4.34, 3.36, 7.83)
y3<-c(0.04347826, 0.02739726, 0.00000000, -0.06423358)
x4<-c(3.92, 1.00, 2.22, 3.88)
y4<-c(-0.11111111, -0.20189274, 0.09278351, 0.04615385)
x4<-FstatP
plot(x,y, xlab="Allelic Richness", ylab="F Statistic")


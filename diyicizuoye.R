install.packages("ade4")#install package ade4
library(ade4)
data("doubs",package="ade4")
class(doubs)
doubs
doubs$species
doubs$fish
species<-doubs$fish
environment<-doubs$env
space<-doubs$xy
head(species)
names(species)
ncol(species)
ncol(species)
dim(species)
spa<-doubs$xy
spe<-doubs$fish
plot(spa,asp=1,type="n",xlab="x(km)",ylab="y(km)")
lines(spa,col="dark blue")
text(spa,row.names(spa),cex=0.5,col="red")
text(70,10,"upstream",cex=0.5,col="red")
text(20,120,"downstream",cex=0.8,col="red")
range(spe)
ab<-table(unlist(spe))
barplot(ab,las=1,xlab="Abundance degree",ylab="Frequency",col = gray(5:0/5))
par(mfrow=c(2,2))#split several windows to view

plot(spa,asp=1,col="brown",cex=spe$Satr,xlab="x(km)",ylab="y(km)")
lines(spa,col="dark blue")
text(150,10,"upstream",cex=0.8,col="blue")
text(20,120,"downstream",cex=0.8,col="blue")

plot(spa,asp=1,col="brown",cex=spe$Thth,xlab="x(km)",ylab="y(km)")
lines(spa,col="dark blue")
text(150,10,"upstream",cex=0.8,col="blue")
text(20,120,"downstream",cex=0.8,col="blue")

plot(spa,asp=1,col="brown",cex=spe$Baba,xlab="x(km)",ylab="y(km)")
lines(spa,col="dark blue")
text(150,10,"upstream",cex=0.8,col="blue")
text(20,120,"downstream",cex=0.8,col="blue")

plot(spa,asp=1,col="brown",cex=spe$Phph,xlab="x(km)",ylab="y(km)")
lines(spa,col="dark blue")
text(150,10,"upstream",cex=0.8,col="blue")
text(20,120,"downstream",cex=0.8,col="blue")


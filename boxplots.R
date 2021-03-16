library(tidyverse)

#getting data into r
femur<-read.csv(file="Femur.csv", sep=",",header=T)
tibia<-read.csv(file="Tibia.csv",sep=",",header=T)
Lmeta<-read.csv(file="Lmeta.csv",sep=",",header=T)
Rmeta<-read.csv(file="Rmeta.csv",sep=",",header=T)

#creating color vector
colors<-c("tomato1","slateblue1","seagreen3","goldenrod2")

#CSA boxplots
boxplot(femur$CSA~femur$Sample, xlab="Sample", ylab="CSA", main="Femoral Cross Sectional Area", col=colors)
boxplot(tibia$CSA~tibia$Sample, xlab="Sample", ylab="CSA", main="Tibial Cross Sectional Area", col=colors)
boxplot(Lmeta$CSA~Lmeta$Sample, xlab="Sample", ylab="CSA", main="Metatarsal Cross Sectional Area", col=colors)
boxplot(Rmeta$CSA~Rmeta$Sample, xlab="Sample", ylab="CSA", main="Metacarpal Cross Sectional Area", col=colors)

#J boxplots
boxplot(femur$J~femur$Sample, xlab="Sample", ylab="Polar Second Moment of Area", main="Femoral Polar Second Moment of Area", col=colors)
boxplot(tibia$J~tibia$Sample, xlab="Sample", ylab="Polar Second Moment of Area", main="Tibial Polar Second Moment of Area", col=colors)
boxplot(Lmeta$J~Lmeta$Sample, xlab="Sample", ylab="Polar Second Moment of Area", main="Metatarsal Polar Second Moment of Area", col=colors)
boxplot(Rmeta$J~Rmeta$Sample, xlab="Sample", ylab="Polar Second Moment of Area", main="Metacarpal Polar Second Moment of Area", col=colors)

#Zpol boxplots
boxplot(femur$Zpol~femur$Sample, xlab="Sample", ylab="Polar Section Modulus", main="Femoral Polar Section Modulus", col=colors)
boxplot(tibia$Zpol~tibia$Sample, xlab="Sample", ylab="Polar Section Modulus", main="Polar Section Modulus", col=colors)
boxplot(Lmeta$Zpol~Lmeta$Sample, xlab="Sample", ylab="Polar Section Modulus", main="Metatarsal Polar Section Modulus", col=colors)
boxplot(Rmeta$Zpol~Rmeta$Sample, xlab="Sample", ylab="Polar Section Modulus", main="Metacarpal Polar Section Modulus", col=colors)

#Imin/Imax boxplots
boxplot(femur$Ratio~femur$Sample, xlab="Sample", ylab="Principle Moment of Area", main="Femoral Principle Moment of Area", col=colors)
boxplot(tibia$Ratio~tibia$Sample, xlab="Sample", ylab="Principle Moment of Area", main="Tibial Principle Moment of Area", col=colors)
boxplot(Lmeta$Ratio~Lmeta$Sample, xlab="Sample", ylab="Principle Moment of Area", main="Metatarsal Principle Moment of Area", col=colors)
boxplot(Rmeta$Ratio~Rmeta$Sample, xlab="Sample", ylab="Principle Moment of Area", main="Metacarpal Principle Moment of Area", col=colors)

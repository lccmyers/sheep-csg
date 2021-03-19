
#getting data into r
femur<-read.csv(file="Femur.csv", sep=",",header=T)
tibia<-read.csv(file="Tibia.csv",sep=",",header=T)
Metatarsal<-read.csv(file="Metatarsal.csv",sep=",",header=T)
Metacarpal<-read.csv(file="Metacarpal.csv",sep=",",header=T)

#creating color vector
colors<-c("tomato1","slateblue1","seagreen3","goldenrod2")

#correctly ordering data
femur_order <- ordered(femur$Sample, levels = c("UCL", "UCL-NR", "AML","Turkey"))
tibia_order <- ordered(tibia$Sample, levels = c("UCL", "UCL-NR", "AML","Turkey"))
metatarsal_order<-ordered(Metatarsal$Sample, levels = c("UCL", "UCL-NR", "AML","Turkey"))
metacarpal_order<-ordered(Metacarpal$Sample, levels = c("UCL", "UCL-NR", "AML","Turkey"))

#CSA boxplots
boxplot(femur$CSA~femur_order, xlab="Sample", ylab="CSA", main="Femoral Cross Sectional Area", col=colors)
boxplot(tibia$CSA~tibia_order, xlab="Sample", ylab="CSA", main="Tibial Cross Sectional Area", col=colors)
boxplot(Metatarsal$CSA~metatarsal_order, xlab="Sample", ylab="CSA", main="Metatarsal Cross Sectional Area", col=colors)
boxplot(Metacarpal$CSA~metacarpal_order, xlab="Sample", ylab="CSA", main="Metacarpal Cross Sectional Area", col=colors)

#J boxplots
boxplot(femur$J~femur_order, xlab="Sample", ylab="Polar Second Moment of Area", main="Femoral Polar Second Moment of Area", col=colors)
boxplot(tibia$J~tibia_order, xlab="Sample", ylab="Polar Second Moment of Area", main="Tibial Polar Second Moment of Area", col=colors)
boxplot(Metatarsal$J~metatarsal_order, xlab="Sample", ylab="Polar Second Moment of Area", main="Metatarsal Polar Second Moment of Area", col=colors)
boxplot(Metacarpal$J~metacarpal_order, xlab="Sample", ylab="Polar Second Moment of Area", main="Metacarpal Polar Second Moment of Area", col=colors)

#Zpol boxplots
boxplot(femur$Zpol~femur_order, xlab="Sample", ylab="Polar Section Modulus", main="Femoral Polar Section Modulus", col=colors)
boxplot(tibia$Zpol~tibia_order, xlab="Sample", ylab="Polar Section Modulus", main="Tibial Polar Section Modulus", col=colors)
boxplot(Metatarsal$Zpol~metatarsal_order, xlab="Sample", ylab="Polar Section Modulus", main="Metatarsal Polar Section Modulus", col=colors)
boxplot(Metacarpal$Zpol~metacarpal_order, xlab="Sample", ylab="Polar Section Modulus", main="Metacarpal Polar Section Modulus", col=colors)

#Imin/Imax boxplots
boxplot(femur$Ratio~femur_order, xlab="Sample", ylab="Principle Moment of Area", main="Femoral Principle Moment of Area", col=colors)
boxplot(tibia$Ratio~tibia_order, xlab="Sample", ylab="Principle Moment of Area", main="Tibial Principle Moment of Area", col=colors)
boxplot(Metatarsal$Ratio~metatarsal_order, xlab="Sample", ylab="Principle Moment of Area", main="Metatarsal Principle Moment of Area", col=colors)
boxplot(Metacarpal$Ratio~metacarpal_order, xlab="Sample", ylab="Principle Moment of Area", main="Metacarpal Principle Moment of Area", col=colors)

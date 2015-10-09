### Hyeon-Young Ro Homework-2 (2)###

##(a)
setwd("C:/Users/³ëÇö¿µ/hyro324-514_homework")

##(b)
wine<- read.csv("wine.txt", head=TRUE,sep=" ")

##(c)
nrow(wine)
ncol(wine)

#Answer > nrow(wine)
#       [1] 180
#       > ncol(wine)
#       [1] 13

##(d)
wine <- wine[-5,]
View(wine)

##(e)
colnames(wine)

#ANswer: > colnames(wine)
#[1] "Alcohol.content"      "Malic.acid"           "As"                   "Alcalinity.in.ash"   
#[5] "Magnesium"            "Total.phenols"        "Falavanoids"          "Nonflavanoid.phenols"
#[9] "Proantocyanins"       "Color.Intensity"      "Hue"                  "OD280.OD315"         
#[13] "Proline" 

##(f)
colMeans(wine)
mean(wine$Magnesium, na.rm=TRUE)
mean(wine$Hue, na.rm=TRUE)

#Answer: 
##> colMeans(wine)
#   Alcohol.content           Malic.acid                   As    Alcalinity.in.ash 
#   12.9948889            2.3405000            2.3657778           19.4922222 
#   Magnesium        Total.phenols          Falavanoids Nonflavanoid.phenols 
#   NA            2.2842778            2.0122778            0.3627222 
#   Proantocyanins      Color.Intensity                  Hue          OD280.OD315 
#   1.5808333            5.0874333                   NA            2.6018889 
#   Proline 
#   744.0388889 

##> mean(wine$Magnesium, na.rm=TRUE)
#[1] 99.12

##> mean(wine$Hue, na.rm=TRUE)
#[1] 0.9520795

##(g)
HueInt <- wine[wine$Color.Intensity > 6.5,] 
mean(HueInt$Hue, na.rm=TRUE)
##Answer: >mean(HueInt$Hue, na.rm=TRUE)
#[1] 0.7443902

##(h)
as.integer(wine$Magnesium)

##(i)
mean(wine$Proline)
wine$Proline.Level <- NA
wine$Proline.Level[wine$Proline >= 744.0894] = "H"
wine$Proline.Level[wine$Proline < 744.0894] = "L"

wine.order <- ordered(wine$Proline.Level, levels = c("L", "H"))
wine.order



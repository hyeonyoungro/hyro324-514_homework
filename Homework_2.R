### Hyeon-young Ro 514-Homework_2 ###
# 2

###(a)
setwd("C:/Users/노현영/hyro324-514_homework/files/data")

###(b)
wine <- read.csv("wine.txt", head=TRUE,sep=" ")
setwd("C:/Users/노현영/hyro324-514_homework")

###(c)
nrow(wine)
ncol(wine)

# Answer: row=180, column=13

###(d)
wine = wine[-5, ]

###(e)
colnames(wine)

#Answer: [1] "Alcohol.content"      "Malic.acid"           "As"                   "Alcalinity.in.ash"   
#        [5] "Magnesium"            "Total.phenols"        "Falavanoids"          "Nonflavanoid.phenols"
#        [9] "Proantocyanins"       "Color.Intensity"      "Hue"                  "OD280.OD315"         
#        [13] "Proline" 

###(f)
colMeans(wine)
mean(wine$Magnesium, na.rm=TRUE)
mean(wine$Hue, na.rm=TRUE)

# Answer: Mean of Magnesium = 99.01149, Mean of Hue = 0.9515771

###(g)
Hue <- wine[wine$Color.Intensity>6.5,]
mean(Hue$Hue, na.rm=TRUE)
#Answer: [1] 0.7443902

###(h)
as.integer(wine$Magnesium)

###(i)
wine$Proline.Level <- NA

mean(wine$Proline)
#[1] 744.0894

wine$Proline.Level[wine$Proline >=744.0894] = "H" 
wine$Proline.Level[wine$Proline < 744.0894] = "L" 

Proline.Level <- ordered(c("L", "H"))
Proline.Level <- ordered(Proline.Level, levels = c("L", "H"))

#######################################
#          PS514-HOMEWORK #3          #
#######################################

##1##
#Approach-1
x.1 <- rep(NA, 999) 
for (i in 1:999){
  if (i %% 3 == 0 || i %% 5 == 0) {x.1[i] <- i} else {x.1[i] <- 0}} 
y.1 <- x.1[x.1 != 0]
sum(y.1)
#Approach-2
m35 = function(n) sum(unique(c(
  seq(3, n-1, by = 3), seq(5, n-1, by = 5))))
m35(1000)

#Answer: 233168


##2##
fibonacci <- numeric()
fibonacci[1] <- 1
fibonacci[2] <- 2
i <- 3
repeat {
  fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
  if (fibonacci[i] > 4e6) break
  i <- i + 1
}
# calculate the sum
fibonacci <- fibonacci[-length(fibonacci)]   # remove the last term
flag <- fibonacci %% 2 == 0  # find the indexes of even numbers
result <- sum(fibonacci[flag])
cat("The result is:", result, "\n")

#Answer: 4613732 


#q1
#(a)Population measure of interest is the number of children in households who received welfare support in a particular city.
#(b) Sample measure of interest is the number of children in households who received welfare support in the 400 samples.
#(c) Demographics of family, the distribution of children in households who received welfare support, etc.

#q2
#(a) sum of x = 920+...+... = 8539
#    sum of x^2 = 8102637
# mean = 8539/9 = 948.7778
# std deviation = 11.3113

#(b) 920, 948, 949, 950, 951, 953, 954. 955, 959
#the median is at n+1/2 = 9+1/2 = 5th place.
#the median is 951.

#(c)Any number bigger than 959 will not change the median value.

#q3
#

injury = read.csv('injury.csv', header = FALSE)
str(injury)
plot(injury$V1)
table(injury$V1)

injtype <- c('meniscal tear', 'MCL tear', 'ACL tear','patella dislocation','PCL tear')
barplot(table(injury$V1),xlab = 'injury',ylab = 'frequency')



injury$V1 <- factor(injury$V1)
plot(injury$V1, col=1:5)


pie(table(injury$V1), label = newlabel)


#q4

weight <- read.csv('weight.csv')
avg <- mean(weight$Weight)
avg
var(weight$Weight)
sd(weight$Weight)

quantile(weight$Weight)

qua <- quantile(weight$Weight)
qua[[2]]

IQR <- qua[[4]] - qua[[2]]
                      
bp <- boxplot(weight$Weight, xlab = 'Weight', ylab='Small part of automobile rear-view mirror')
bp

hist(weight$Weight)


idt <- read.csv('IDT.csv', header = FALSE)
idt
hist(idt$V1)

logIDT<-log(idt$V1, base=10)
hist(logIDT)

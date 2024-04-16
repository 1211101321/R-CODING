#q1

x <- 1:2000
x[x%%317==0] #x outised bracket is to select the numbers in the array

#q2

x <- 1:2000
x[x%%17==0]


#this is how many multiples of 17 from 1 to 2000
floor(2000/17) #floor value from decimal point
sum(1:2000%%17==0) # make vector 1 to 2000 modulus 17 then check if remainder 0

#q3


x <- c("Maine", "Maryland", "Minnesota", "Massachusetts", "Michigan", "Mississippi", "Missouri", "Montana")

selected_words <- c()

for (i in x) {
  if (nchar(i) < 6 || nchar(i) > 8) {
    selected_words <- c(selected_words, i)
  }
}

print(selected_words)



x <- c("Maine", "Maryland", "Minnesota", "Massachusetts", "Michigan", "Mississippi", "Missouri", "Montana")

x[(nchar(x) < 6)|(nchar(x) > 8)]

#q4

x <- c(8,17,21,2,-9,0)
y <- (max(x) * min(x))
y

#how dr pee does it is different but my way was the easiest way


#q5

celsius_to_fahrenheit <- function(celsius) {
  return((celsius * 9/5) + 32)
}

celsius_temp <- 32
fahrenheit_temp <- celsius_to_fahrenheit(celsius_temp)
fahrenheit_temp

#how dr pee did it
c2f <- function(c){
  return (9/5*c + 32)
  
}
c2f(32)

#q6


x <- 1:2000
yay <- function(y){
  x[x%%y==0]
}
yay(20)

#dr pee's way

ismult <- function(x,y){
  x[(x%%y==0)]
}
ismult(-10:10,3) #he creates the vector for x and passes in param

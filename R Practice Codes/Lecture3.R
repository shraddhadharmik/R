1:10
1.5:10
1.5:10.5
1.5:9

seq(1,10)
seq(1,10, length.out = 5)
seq(1,10, by=2)
seq(1,10,b=2)
seq(50:60) #along.with

#rep()
rep('a', 10)
rep('b', times = 15)
rep(letters, 2)
rep(21:26, 2)
rep(21:26,1:6)
rep(1:3, l=5)

#sequence()
sequence(c(1,2,3))
sequence(5:6)

set.seed(0)
rnorm(20,2,3)
runif(20,2,3)

sample(1:25, replace=TRUE)
sample(10)
sample(10, replace = TRUE)

a<-scan(text = readline(prompt='Enter 2 numbers: '), sep=',')
a[2]

#Functions
#Math functions
abs(10)
abs(-10)
log(8,2)
factorial(5)

#Statistical funcitons
speed = cars$speed
head(speed)
tail(speed)
mean(speed)
median(speed)
var(speed)
sd(speed)
summary(speed)
quantile(speed)

head(scale(speed, center=F, scale=T))

head(scale(speed))
head(scale())
xyz <- function(){
  print('Hello')
}
xyz()

add <- function(a,b) return (a+b)
num<-scan(text = readline(prompt='Enter 2 numbers: '), sep=',')
add(num[1],num[2])


hypotenus <- function(l, h) {
  h <- (l**2) + (h**2)
  print( sqrt(h))
}

hypotenus(3,4)

series <- function(start, end) return (sequence(start:end))
series(3,6)

seq(readline(prompt = 'Enter start number : '), 
    readline(prompt = 'Enter end number :'), 
    as.integer(readline(prompt = 'Enter step number :')))

checkChar <- function(char){
  print(paste('Character is alphabet : ', char %in% letters | char %in% LETTERS))
  print(paste('Character is upper case alphabet : ', char %in% LETTERS))
  } 

checkChar('A')

n <- 4
print(paste('sdfsd is ', n))
strsplit('Hell,o', split=',')


#################### Control Structures ##################
x <- c('what', 'is', 'truth')
if('df' %in% x){
  print('Truth found')
}else{
  print('Truth not found')
}


x <- 50
if(x<0){
  print('x is -ve')
}else if(x==0){
  print('x is 0')
}else print('x is positive')

ifelse(x<1,'x is less than 1', 'x is greater than 1')

x <- switch(3, 'first', 'second', 'third')
x
a <- 10
b <- 20
add <- function(a,b) return (a+b)
subt <- function(a,b) return (a-b)

switch(as.integer(readline(prompt = 'Enter 1 for addn or 2 for subtn : ')), add(a,b), subt(a,b))


##Looping
vect <- c(3,4,6,2,7,9,12,56)
for(num in vect){
  if(num%%2==0) print(num)
}

cnt <- 5
while(cnt<7){
  print('Hello')
  cnt=cnt+1
}

repeat{
  print("Hello")
  cnt = cnt+1
  if(cnt>1) break
}

for(i in 1:10){if (i==5) next else print(i)}

name <- readline(prompt = 'Enter a word : ')
if(name %in% letters){
  print(name)
}else{
  print('nnn')
} 

num1 <- readline(prompt = 'Enter a number : ')
if(is.integer(sqrt(as.integer(num1)))){
  print(sqrt(as.integer(num1)))
}else {
  print('Number is not a perfect square')
}

cnt <-1
repeat{
  print('something')
  cnt <- cnt + 1
  if(cnt == 200) break
}

abc('A',LETTERS)
abc=function(x,y) return(x %in% y)
abc<-function(x,y) {return(x %in% y)}
abc<-function(x,y) {return x %in% y }


for(i in 1:10){if(i<11) next else print(i)}

#Comments
getwd()
setwd('C://Shraddha//Aegis//R//Codes')

?plot
help(plot)
??plot

#Basic Computations
2+3
6/3
6/3.0
6.0/3
6.0/3.0
log2(32)
sqrt(64)
seq(0,10, by = 3)
seq(0,10)
seq(0,10, length = 2)

plot(cos(seq(0, 2*pi, length=100)))


print('Hello', 'there')
paste('Hello', 'there')
cat('Hello', 'there')

## Input Variable
a = readline(prompt = 'Enter the number : ')
print(a)


#built in constants
pi
letters
LETTERS
month.name
month.abb


#Working with packages
installed.packages()
install.packages('e1071')

#Load a package/ Import a package
library(e1071)

detach("package:e1071", unload = TRUE)
remove.packages('e1071')

#Update packages
#update.packages()

?base

#Classes in R
x = 5
class(x)

#how is it stored in double precision
typeof(x)

x='a'
class(x)
typeof(x)

#integer scalar
x=5L
typeof(x)

#Logical scalar
x=FALSE
x = 4+x
print(x)

#complex scalar
x <-4+2i
class(x)


x <- charToRaw('Hello')
x

as.integer('1')
as.complex(5)


as.integer('H')
as.character(TRUE)


#Vectors - datatypes of single class
v1 = vector()
v1

#Character vectr
v1 = vector('character', 5)
v1

#Combine
v2 = c(1,2,3)
class(v2)
v2


v2 = c('hello', 'there')
class(v2)
v2
v2 <- c(v2, 'Vipin')
v2 <- c('Ron', v2)

v3 = seq(1:10)
class(v3)

#infinity
1/0
-1/0
0/0

#coercion
v4 = c(3,4,'hello')
class(v4)

#Heirarchy
#Character > Complex > Numeric > Integer > Logical

v4 <- c(1, 1L, TRUE, 'a')
class(v4)

v4 <- c(1, 1L, TRUE)
class(v4)

v4 <- c(1, 1L, as.integer('a'))
class(v4)
v4
length(v4)
str(v4)

##List - with different datatypes

l1 = list(1, 1L, TRUE, 'a', 4+2i)
l1
v5 = unlist(l1)
class(v5)

l1[[1]]
l1[1]

l2 = list(l1, TRUE)   
l2
l2[[1]][[4]]
l2[2]
l2[1][4]

l2=list(a=l1, b=TRUE)
l2
l2['a']
l2$a
l2$a[1]

#To display names
names(l2)

class(l2)

#Matrix
m = matrix(c(1,2,3,4))
m
m[1,1]


#2D vector
m = matrix(c(1,2,3,4), nrow = 2, ncol = 2)
m
m[2,2]


m = matrix(c(1,2,3,4), nrow = 2, ncol = 4)
m

#to change fillinf default by column
m = matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
m

m[1:2, 2]

#Array
a1 = array(c(1,2,3,4,5,6,7,8,9), dim = c(2,2,2))
a1

a1[2,1,2]


#Factor
f1 = factor(c('M', 'F', 'F', 'M', 'F'))
f1
nlevels(f1)


##Dataframes - collection of vectors of equal length
df1 = data.frame(gender = c('M', 'F', 'M', 'M'), id = c(1,2,3,4))
df1
View(df1)

df1[1,1]

df1$gender
df1$id

dimnames(m) = list(1:4, c('a','b'))
m

dimnames(m) = list(letters[1:4], c('a','b'))
m

##Practice Questions
temp = seq(10:20)

rain = c('Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y')

weather = list(temp, rain)

df1 = data.frame(students = c(1,2,3,4), english = c(70,70,70,80), maths = c(45,68,45,78), 
                 science = c(45,76,34,89) )

df1

##Variable names

ls()

#Hidden variables
.abc = 10

##
ls(all.names = TRUE)

ls(pattern = 'a')

rm(.abc)
rm(list = ls())


3+6
6%%3
4%/%3
4^3

##Relation operators
4<3
5!=6

##Logical Operators
4&3
!4
4
4 && 3
4|3

v1 = c(1,2,3,4)
v2 = c(2,3,4,4)
v1 && v2
v1&v2
v1 | v2


###Assignment operators
v1 <- 5
v1 <<- 5
v1 = 5

4 -> v1
5 ->> v1


#Miscelenoeous operators
1:10
'a' %in% letters
0 %in% letters


m1 = matrix(c(1,2,3,4,5,6), nrow=2, ncol=3)
m1
t(m1)
m1 %*% t(m1)

#dataset in R
data()
iris
View(iris)
?iris

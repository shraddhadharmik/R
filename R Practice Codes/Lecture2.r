?mtcars

##Missing Values
x <- c(1,4, NA, NaN)
y <- c('a', 'b', 'c')
is.na(x)
is.na(y)
anyNA(x)
anyNA(y)
is.nan(x)
is.nan(y)
sum(x, na.rm = TRUE)
sum(y)

x = na.omit(x)
x
class(x)

#ordering
data()
mtcars['mpg']
mtcars$mpg
attach(mtcars)
mtcars[c('mpg', 'hp')]
mpg

class(mtcars)

### Merge
a = data.frame(id=c(1,2,3,4), name = c('a','b', 'c', 'd'))
b = data.frame(roll = c(1,2,3,5), marks = c(9,8,19,7))
a
b


merge(a,b)

#full outer join
merge(a, b, by.x='id', by.y='roll', all=TRUE)

#left outer join
merge(a, b, by.x='id', by.y='roll', all.x =TRUE)

#right outer join
merge(a, b, by.x='id', by.y='roll', all.y =TRUE)


##CBIND
cbind(a,b)

aa = mtcars[1:20,]
bb = mtcars[21:32,]

rbind(aa, bb)
ncol(aa)
nrow(aa)


##Ordering
#ascending
mtcars[order(mpg, cyl),]

#descending
mtcars[order(-mpg, cyl),]

#Reshaping
library(reshape2)
df = data.frame(id=c(1,2,1,2), time=c(11,11,12,12), x1=c(5,3,6,2), x2=c(4,5,6,7) )
df
ss = melt(df, id = c('id', 'time'))
dcast(ss, id~variable, mean)

as.data.frame(ss)

#Subsetting
mtcars[1:5]
mtcars[which(cyl>3 & mpg>15),]
mtcars[which(cyl>4),]
subset(mtcars, cyl>4 & mpg>15, select = c(mpg:drat))

sqrt(64)
pi
letters
LETTERS
getwd()
pwd
pwd()
getwd
x <- 255<400
y <- 540 > 589
x | y
x - y
y - x

f1 = factor(c('M', 'F', 'F', 3, 'F'))
typeof(f1)

l1 = list(1, 1L, TRUE, 'a', 4+2i)
l1
v5 = unlist(l1)
class(v5)

temp = c('MANGO', 'APPLE', 'KIWI')
class(l1)
as.logical(temp)

x <- c(1, "dffd", 5) 
y <- c(3, 2, 10)
z = cbind(x, y)
class(z)
5%/%2
5/2
is.matrix()

t(z)

x <- 1:4
y <- 2:3          
z = x+y


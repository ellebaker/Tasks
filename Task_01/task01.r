#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 
library(swirl)
swirl()
library(swirl)
ellebaker
1 
1
1
1
5 + 7
x <- 5 + 7
x
y <- x - 3
y
z <- c(1.1, 9, 3.14)
?c
z
c(z, 555, z)
z*2+100
my_sqrt <- sqrt(z-1)
1
2
my_sqrt
my_div <- z/my_sqrt
3
my_div
c(1,2,3,4) + c(0,10)
c(1,2,3,4) + c(0,10,100)
z*2+1000
my_div
2
library(swirl)
swirl()
ellebaker
1
2
getwd()
ls()
x <-9
ls(

)
list.files()
swirl()
library(swirl)
swirl()
ellebaker
1
?list.files
args()
args(list.files())
args(list.files)
old.dir <- getwd()
dir.create(testdir)
dir.create()<-testdir
testdir <- dir.create()
dir.create("testdir")
setwd("testdir")
create.file("mytest.r")
file.create("mytest.r")
file.create("mytest.R")
list.files()
file.exists("mytest.R")
file.info("mytest.R")
file.info("mytest.R")$mode
file.rename("mytest2.R")
file.rename("mytest.R")
file.rename("mytest2.R")
file.rename("mytest.R")("mytest2.R")
file.rename()
file.rename("mytest.R")
file.rename("mytest2.R")
file.rename("mytest.R""mytest2.R")
file.rename("mytesst2.R")
mytest.R file.rename("mytest2.R")
mytest.R <-file.rename("mytest2.R")
file.rename(from mytest.R,to mytest2.R)
file.rename(from = "mytest.R", to = "mytest2.R")
file.remove("mytest.R")
file.copy(from = "mytest2.R", to = "mytest3.R")
file.path("mytest3.R")
file.path("folder1" and "folder2")
file.path
file.path("folder1", "folder2")
?dir.create
dir.create(file.path("testdir2","testdir3"))
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
setwd(old.dir)
delete(testdir)
2
1
3
1:20
pi:10
15:1
?`:`
seq(1,20)
seq(0,10, by=0.5)
my_seq <- seq(5,10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0,1,2), each = 10)
2
1
4
num_vect("0.5,55,-10,6")
num_vect(0.5, 55, -10, 6, =TRUE)
num_vect(seq(0.5,55,-10,6))
num_vect('0.5, 55, -10, 6')
c("0.5, 55, -10, 6")
num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
2
tf
num_vect >=6
1
2
2
my_char <- c("My","name","is")
my_char
paste()
paste(my_char, collapse = " ")
my_name <- c(my_char, "ellebaker")
my_name
paste(my_name, collapse = " ")
paste("Hello", "world!", sep = " ")
vector recycling
paste(LETTERS, 1:4, sep = "-")
1
1
5
x <- c(44, NA, 5, NA)
x*3
y <- rnorm(1000)
z <- rep(NA,1000)
my_data <- sample(c(y,z), 100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
0/0
Inf-Inf
2
1
6
x
x[1:10]
3
1
2
4
1
x[is.na(x)]
y <- x[!is.na(x)]
y
1
y[y>0]
x[x>0]
x[!is.na(x) & x>0]
x[is.na(c(3,5,7))]
x[c(3,5,7)]
x[0]
x[c(-2,-10)]
x[-c(2,10)]
vect<-c(foo= 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11,2,NA)
names(vect2) <- c("foo","bar","norf")
identical(vect,vect2)
3
2
vect["bar"]
vect[c("foo","bar")]
1
1
7
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4,5)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(data = 1:20, nrow =4, ncol =5)
identical(my_matrix, my_matrix2)
patients <- c("Bill","Gina", "Kelly", "Sean")
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my_data
class(my_data)
colnames(my_data) <- cnames
my_data
2
1
8
TRUE == TRUE
(FALSE == TRUE) == FALSE
6==7
6<7
10<=10
5!=7
!(5==7)
FALSE&FALSE
TRUE && c(TRUE, FALSE,FALSE)
TRUE || c(TRUE,FALSE,FALSE)
5>8 || 6!=8 && 4>3.9
isTRUE(6>4)
3
5
identical('twins','twins')
2
4
xor(5==6, !FALSE)
2
1
ints <- sample(10)
ints
ints>5
which(ints>7)
3
any(ints<0)
all(ints>0)
3
2
1
1
1
9
Sys.Date()
mean(c(2,4,5))
boring_function <- function(x)
submit()  
boring_function('My first function!')
boring_function
submit()
my_vector<-c(2,4,5)
submit()
?cars
head(cars)
plot(cars)
?plot
plot(y = cars$speed, x = cars$dist)
plot(cars)
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = Speed, y = Stopping Distance)
plot(x = cars$speed, y = cars$dist, ylab ="Stopping Distance",xlab = "Speed")
plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")
plot(cars, col = 2)
plot(cars, xlim = c(10,15))
plot(cars, pch = 2)  
data(mtcars)
boxplot(formula = mpg ~ cyl, data = mtcars )
hist(mtcars$mpg)

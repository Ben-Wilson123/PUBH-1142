# Introduction to R: Session 1

ages <- sample(1:100,20,replace=TRUE)
min(ages)
max(ages)
range(ages)
quantile(ages)
IQR(ages)
hist(ages)

fruit <- c("apple", "orange", "mango", "watermelon", "banana", "cherry")
length(fruit)
nchar(fruit)

ages <- c(50, 55, 60, 65) 
ages > 55
ages < 60
ages <= 60
ages %in% 55
ages != 55
ages == 65
x <- c(TRUE, FALSE, FALSE, NA, TRUE, NA)
print(typeof(x)) #type of an object
print(x)

num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2, 3, TRUE)
num_logical <- c(1, 2, 3, FALSE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")

ages <- c(ages, 90) 
ages
ages <- c(30, ages)
ages
ages > 60 
ages[ages > 60] 
ages[ages == 60]
ages[ages < 50 | ages > 60]
ages[ages > 50 & ages < 60]

fruit <- c("apple", "orange", "mango", "watermelon", "banana", "cherry")
fruit[2]
fruit[-2]
fruit[c(1, 3)] 

heights <- c(2, 4, 5, NA, 6, 9, 12, 14)
mean(heights)
max(heights)
mean(heights, na.rm = TRUE)
max(heights, na.rm = TRUE)
is.na(heights)
!is.na(heights)
heights[!is.na(heights)]
na.omit(heights) 

x = c(“A”, “d”, NA, “ab”, “NA”)
x <- c(1,2,4)
x + c(5,0,-1)
x * c(5,0,-1)

ages <- c(50, 55, 60, 65) 
names(ages)
names(ages) <- c("Adam", "Brian", "Cory", "Don")
names(ages)
ages
names(ages) <- c("Adam", "Brian", "Cory", "Don")
ages["Cory"]
names(ages) <- NULL

5:8
5:1
i <- 2
1:i-1
1:(i-1)

seq(5,8)
seq(12,30,3)
seq(1.1,2,length=10)
x <- rep(8,4)
x
rep(1:3,2)

name <- c("Adam", "Brian", "Cassey", "Donna", "Eli", "Fred")
age <- c(34,21,14,65,22,12)
sex <- c("M", "M", "F", "F", "M", "M")

my_matrix <- data.frame(name,age,sex)
str(my_matrix)
my_matrix2 <- data.frame(name = c("Adam", "Brian", "Cassey", "Donna", "Eli", "Fred"),
                         age = c(34,21,14,65,22,12),
                         sex = c("M", "M", "F", "F", "M", "M"), stringsAsFactors = FALSE)

library(ggplot2) 
data <- data.frame( 
  Name = c("Alice", "Bob", "Charlie", "Diana", "Eve"), 
  Age = c(25, 34, 29, 42, 50), BMI = c(22.5, 27.8, 24.3, 30.5, 28.7), 
  Sex = c("Female", "Male", "Male", "Female", "Female") ) 

ggplot(data, aes(x = Name, y = Age)) + 
  geom_bar(stat = "identity", fill = "lightblue") + 
  ggtitle("Bar Plot of Age by Name") + 
  xlab("Name") + ylab("Age") + 
  theme_minimal() 











#1.1 Write an R program to create three vectors a, b, c with 5 integers. 
a<-c(1,2,3,4,5)
b<-c(6,7,8,9,10)
c<-c(11,12,13,14,15)

#1.2 combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of 
#the matrix. 
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)
#Plot a graph and label correctly
plot(m ,xlab = "My a label",ylab = "my b label", main = "My graph", type = "o")

#2. Write a R program to create a Data frames which contain details of 5 employees and display the details. (Name, Age, 
#Role and Length of service). 

Employees = data.frame(Name=c("Fiona Parsons","Andrew Smith","Derek Farmer", "Sarah Finch","Dale Andrews"),
                       Age=c(23,22,25,26,32),
                       Role=c("Analyst","Manager","Exective","Director","Assistant"),
                       LengthOfService=c("3 yrs 5 mths","0 yrs 3 mths","2 yrs 9 mths","5 yrs 1 mths","3 yrs 2 mths"))

print("Summary of the data:")                      
print(summary(Employees))

#3. Import the GGPLOT 2 library and plot a graph using the qplot function. X axis is the sequence of 1:20 and the y 
#is the x ^2. Label the graph appropriately. install.packages("ggplot2",dependencies = TRUE)
#install.packages("ggplot2",dependencies = TRUE)
library(ggplot2)
x <- 1:20
y = x^2

qplot(x ,y, colour = I("green"), 
      xlab = "Total x",
      ylab = "total y",
      main = "Total x by total y")

#4.Create a simple bar plot of five subjects

marks = c(55, 88, 65, 78, 55)
barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Subject",
        ylab = "Marks",
        names.arg = c("Business", "German", "Maths", "English", "Geography"),
        col = "slateblue",
        horiz = FALSE)

#5. Write a R program to take input from the user (name and age) and display the values.

name = readline(prompt="What is your name: ")
age =  readline(prompt="What is your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)

#6. Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 
#and sum of numbers.

print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print(paste("Mean of numbers from 20 to 50 is",mean(50)))
print(paste("Sum of numbers from 20 to 50 is",sum(20:50)))

#7. Write a R program to create a vector which contains 10 random integer values between -50 and +50

ran = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(ran)

#Optional Challenge
#1. Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#2. Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for 
#multiples of 5, and print "FizzBuzz" for multiples of both.

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("Fizz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("FizzBuzz")}
  else print(n)}
#comment

#prints line
"Hello World!"
"Hello World!"

5

#5 10 20 #will raise error

#variable
name1 = "Amit"
name1 #to print the variable

a = 20
a

#R is case sensitive

a = a+5
a

4*8

text = "Exellent"
paste("ExcelR is", text) #Concatenate
paste("Students are", text)

name="Sakshi"
paste("My name is: ", name)

#Assign same value to multiple variables
var1=var2=var3="Blue"

#Legal variable names
myvar = "Sakshi"
my_var = "Sakshi"
myVar = "Sakshi"
MYVAR = "Sakshi"
myvar2 = "Sakshi"
this.year = 2023

#Illegal variable names
2myvar = "s"
my-var = "s"
my var = "s"
my_v@r = "s"
_my_var = "s"
TRUE = "s"

#Data types in R
#Numeric/Float - decimal whole -ve +ve

x = 10.5
class(x) #class function is for datatype
class(name)

#Integer - whole +ve -ve L(Integer)
y = 1000L #if written only 100 the datatype will be numeric
class(y)

#character/string
x1 = "R is Exciting"
class(x1)

#logical/ boolean
x = TRUE #or T, F, False
class(x)

3>5
5>3
5==5
1 != 6

# Arithmetic operators
x = 20
y = 30

x+y
y-x
x*y
x/y #float/decimal
x^2 #carat sign

x %% y #modulus (gives remainder)
x %/% y #integer division (gives quotient in integer)

2*pi*6378
pi

??constants #?? is for help
LETTERS
letters
month.abb
month.name

#Assignment operator
x = 50
50 -> x #previous version

#Built in Math Functions
max(25,78,10)
min(2,10,3)
sqrt(25)
abs(-4.5)

#Data Structures : Vectors, DataFrames

#Homogeneous Vectors
#vector of strings
fruits = c("Banana", "Apple", "Orange", "Strawberry") #c stands for concatenate/combine
class(fruits)
#vector of numerical
age = c(10,20,30)
n2 = c(T, F, TRUE, FALSE)

#Heterogeneous Vectors
mix = c(81,5.2,TRUE,"Mango",5L, F)

#Operations on vector
x = c(2,5,8,4)
y= c(1,9,9,9)

x+y

x*5

(x+y)*1.5

#sequence
1:10
40:45
45:40
seq(1, 50, 5) #seq(start value, end value, step/increment/decrement)
seq(1,50, by=3) #by is optional
seq(1, 10) #by default increment/decrement val is 1
seq(10, 1, -2)

n1 = 1.5:6.3
n1

n3 = 1.5:6.5
n3

#Repetition
rep(45,7)
rep("Mango", 5)

#Random Sample

sample(1:50,3)#3 random numbers from 1 to 50
sample(1:10,200)#error
sample(1:10,200,replace=TRUE)#it allows repetition for the range
sample(c("HP","Apple","Lenovo"),7,replace=T)
sample(c("HP","Apple","Lenovo"),2)

#Indexing
#Index starts from 1 in R
#Indexing/Accessing vector elements
x = c(2,5,8,20,10,30,58)
x[7]
x[1]
x[c(4,5)] #to access more than one element
x[-1] #excludes first element and returns remaining
x[-2]
x[c(-1,-4)]
x[1] = 3

x[-1] = 5 #all elements are replaced with 5 except the first one

y=c(1,9,9,9)
y<9 #compares every element in y with 9

y[y<9]=7 #pass 7 to the element which satisfies the condition from y

y[y>7]=10

#Relational operators with vectors
marks = c(60,70,80,50,90)
marks>50
marks[marks>50]
marks==80

names=c("Snehal", "Pooja","Vidya","Ganesh")
p1=c('a','b')

"Pooja" %in% names #returns true if it is there

"Meenal" %in% names

#Slicing
marks

marks[3:7]

marks[3] = 97

marks[-3] = 100

marks[6]=90 #adds 6th element

#select elements from a vector with conditions

price = c(2999,449,29,650,2800,192,9384,373,474,4745)
price[2:7]
price[price>1000]
sort(price)
sort(price, descending =T)#error descending not allowed
help(sort)
sort(price, decreasing=T)

length(marks)

paste(1:12)

nth = paste(1:12, c("st","nd","rd", rep("th",9)))
nth

paste(month.abb, "is the", nth, "month of the year")

#Basic Functions on Vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price)
help(mode)

#Data Frames
#Slicing data frames
a = c(42,18,91,87,66)
b = c("p","q","r","s","t")

data.frame(a,b) #only shown not stored
df = data.frame(a,b) #stores in memory

#row - observation, column-variable

df1 = data.frame(Training = c("strength","stamina","other"), 
                 Pulse=c(100,150,120), 
                 Duration = c(60,30,45))

df1

df1[,1]#all rows, 1st col

df1[2,]#2nd row, all cols

df1[,3]

df1[,]

df1$Training #case sensitive, $column name

df2 = data.frame(Height = c(150,160),
                 Weight = c(65,72))

food = data.frame(name = c("Paneer", "Pavbhaji", "Butter Chicken", "Gulabjamun", 
                           "Pani Puri", "Chicken 65"),
                  type = c("Veg", "Veg", "Nonveg", "Veg", "Veg", "Nonveg"),
                  taste = c("Spicy", "Spicy", "Spicy", "Sweet", "Spicy", "Spicy"),
                  price = c(120,235,420,340,90,315))

food[food$type=="Veg",] #rows with type veg "," all columns

food[food$type=="Nonveg", c(1,4)]
#or
food[food$type=="Nonveg", c("name","price")]#for specific cols

#for two or more conditions
food[food$taste=="Spicy" & food$price<300,] 
food[food$taste=="Spicy" | food$price<300,]

#Orange, mtcars are built in data sets
Orange
mtcars

dim(mtcars)#dimensions #no. of rows and columns
nrow(mtcars)#no. of rows
ncol(mtcars)#no. of cols
str(mtcars)#structure #col names data types and values
summary(mtcars)

help(mtcars)
mtcars$cyl
table(mtcars$cyl)#values with corresponding number of records in tabular format
table(mtcars$gear)

#USArrests another built in data set
USArrests
View(USArrests)#dataset opens in new window in table structure

head(USArrests) #top 6 records
tail(USArrests) #last 6 records
head(USArrests,8)
tail(USArrests,10)

#Check all available datasets
data()


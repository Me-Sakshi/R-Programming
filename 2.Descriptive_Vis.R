ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary = c(10,20,30,40,50,60,70,80,90,100)
plot(salary)

plot(ages,salary)
plot(salary,ages)

help(plot)

airquality = datasets::airquality#imports the dataset
#variable name = datasets::dataset name

head(airquality,10)
tail(airquality,10)
names(airquality)
dim(airquality)

airquality[,c(1,2)]

df = airquality[,-6]#excludes col 6

summary(airquality[,1])#summary of specific col

summary(airquality$Temp)

airquality$Wind #values of wind col

summary(airquality)

#Visualization
plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind, type="p")
plot(airquality)#ScatterPlot
help(plot)
plot(airquality$Ozone, airquality$Month)
plot(airquality$Month, airquality$Ozone)

#Points and Lines
plot(airquality$Wind, type="p")
plot(airquality$Wind, type="l")
plot(airquality$Wind, type="b")

plot(airquality$Wind,
     xlab= "Ozone Concentration",
     ylab="No. of Instances",
     main="Ozone levels in NY City",
     col="red",
     type="l")

plot(airquality,col="blue")

plot(airquality$Ozone, airquality$Solar.R)
plot(airquality$Solar.R, airquality$Ozone)

#BarPlot
barplot(airquality$Ozone,
        main = 'Ozone Concentration in air',
        ylab = 'ozone levels',
        col = 'blue',
        horiz = T,
        axes = F)

#Histogram
#Frequency distribution of interval
hist(airquality$Temp)

hist(airquality$Temp,
     main = 'Solar Radiation Values in Air',
     xlab= 'Solar Rad',
     col = 'blue',
     border = 'red')

#Single Box Plot
#to find outliers
boxplot(airquality$Wind,
        main = 'Boxplot',
        border = 'red',
        col='blue',
        horizontal = T)

boxplot.stats(airquality$Wind)$out #direct info about outliers

airquality$Ozone

#Multiple Box Plot
boxplot(airquality[,1:4],
        main = 'Multiple Box Plot',
        horizontal = T,
        col = 'Pink')

help(par)
par(mfrow=c(3,3), mar=c(1,2,1,2), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Wind, type = "l")
plot(airquality$Solar.R, type = "l")
barplot(airquality$Ozone,
        main = 'Ozone Concentration in air',
        ylab = 'ozone levels',
        col = 'blue',
        horiz = T,
        axes = F)
boxplot(airquality$Wind,
        main = 'Boxplot',
        border = 'red',
        col='blue',
        horizontal = T)
boxplot(airquality[,1:4],
        main = 'Multiple Box Plot',
        horizontal = T,
        col = 'Pink')
hist(airquality$Temp)

#Considering NA Values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm = T)#rm means remove/exclude #remove na
median(airquality$Ozone)
median(airquality$Ozone, na.rm = T)
min(airquality$Ozone,na.rm = T)

#Variance
#skewness
#kurtosis
#density plot

var(airquality$Wind)
sd(airquality$Ozone, na.rm = T)

skewness(airquality$Ozone)#error
kurtosis(airquality$Ozone)#error

#Installing Packages
#install from packages window

skewness(airquality$Ozone, na.rm = T)
kurtosis(airquality$Ozone, na.rm = T)

#Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone, na.rm = T))

erquakes=datasets::quakes

head(erquakes,10)
tail(erquakes,10)
dim(erquakes)

erquakes[,c(1,2)]

df = erquakes[,5]

summary(erquakes[,1])

erquakes$stations

summary(erquakes)

#Visualization
plot(erquakes$lat)

# Intro to R Lecture
sd(c(5,8,12))
which.min(c(4,1,6))
8*6
2^16
2^8*6
sqrt(2)
abs(-65)

?sqrt
SquareRoot2 = sqrt(2)
SquareRoot2

HoursYear <- 365*24
HoursYear
ls()

c(2,3,5,8,13)

Country = c("Brazil", "China", "India", "Switzerland", "USA")
LifeExpectancy = c(74,76,65,83,79)
Country
LifeExpectancy
Country[1]
Country[5]
LifeExpectancy[5]

seq(0,100,2)
CountryData = data.frame(Country, LifeExpectancy)
CountryData
CountryData$Population= c(199000, 1390000, 1240000, 7997, 318000)
CountryData

Country = c("Australia", "Greece")
LifeExpectancy = c(82, 81)
Population = c(23050, 11125)
NewCountryData = data.frame(Country, LifeExpectancy, Population)
NewCountryData

AllCountryData = rbind(CountryData, NewCountryData)
AllCountryData

getwd()
setwd("~/Development/MIT_Analytics_Edge/unit_1")
getwd()
WHO = read.csv("WHO.csv")
str(WHO)
summary(WHO)

WHO_Europe = subset(WHO, Region == "Europe")
str(WHO_Europe)
write.csv(WHO_Europe, "WHO_Europe.csv")
ls()
rm(WHO_Europe)
ls()

Under15
WHO$Under15
mean(WHO$Under15)
sd(WHO$Under15)
summary(WHO$Under15)
which.min(WHO$Under15)
WHO$Country[86]
which.max(WHO$Under15)
WHO$Country[124]

plot(WHO$GNI, WHO$FertilityRate)
Outliers = subset(WHO, GNI > 10000 & FertilityRate > 2.5)
str(Outliers)
nrow(Outliers)
Outliers[c("Country", "GNI", "FertilityRate")]

mean(WHO$Over60)
which.min(WHO$Over60)
WHO$Country[183]
which.max(WHO$LiteracyRate)
WHO$Country[44]

hist(WHO$CellularSubscribers)
boxplot(WHO$LifeExpectancy ~ WHO$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab="", ylab="Life Expectancy", main="Life Expectancy of Countries by Region")
table(WHO$Region)
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, min)
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm=TRUE)
tapply(WHO$ChildMortality, WHO$Region, min, na.rm=TRUE)
tapply(WHO$Over60, WHO$Region, mean)
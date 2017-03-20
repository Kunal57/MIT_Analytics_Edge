# Assignment 1 - An Analytical Detective

# Get working directory
  getwd()
# Set working directory
  setwd('/Users/Kunal/Development/MIT_Analytics_Edge/unit_1/assignment_1')
# Set dataset to a dataframe (mvt)
  mvt = read.csv('mvtWeek1.csv')
# Call str function on the dataframe
  str(mvt)
# Call summary function on the dataframe
  summary(mvt)
  
# Get first entry of date
  mvt$Date[1]
# Convert date characters into date object
  DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
# Look at DateConvert variable using summary function
  summary(DateConvert)
# Extract Month and Day of the week
  mvt$Month = months(DateConvert)
  mvt$Weekday = weekdays(DateConvert)
# Replace old date variable with new DateConvert variable
  mvt$Date = DateConvert
# Fewest motor vehicle theft month
  
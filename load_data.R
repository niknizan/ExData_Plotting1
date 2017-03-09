# Packages required
library(data.table)
library(lubridate)

# Read the raw table and limit to 2 days as instructed
# Assumes source data is in 'data' folder
var <- c(rep('character',2),rep('numeric',7))
tidyData <- read.table('./data/household_power_consumption.txt',header=TRUE, sep=';',na.strings='?',colClasses=var)
tidyData <- tidyData[tidyData$Date=='1/2/2007' | tidyData$Date=='2/2/2007',]

# Clean up the variable names and convert date/time fields
cols <- c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3')
colnames(tidyData) <- cols
tidyData$DateTime <- dmy(tidyData$Date)+hms(tidyData$Time)
tidyData <- tidyData[,c(10,3:9)]

# Write a clean data set to the directory
write.table(tidyData,file='filtered_power_consumption.txt',sep='|',row.names=FALSE)

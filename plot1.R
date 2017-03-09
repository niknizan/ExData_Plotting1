# Open graphic device
png(filename='plot1.png',width=480,height=480,units='px')

# Plot data
hist(tidyData$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()
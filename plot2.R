# Open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(tidyData$DateTime,tidyData$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()
# Open graphics device
png(filename='plot4.png',width=480,height=480,units='px')

# Make 4 plots
par(mfrow=c(2,2))

# Plot data on top left (1,1)
plot(tidyData$DateTime,tidyData$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

# Plot data on top right (1,2)
plot(tidyData$DateTime,tidyData$Voltage,xlab='datetime',ylab='Voltage',type='l')

# Plot data on bottom left (2,1)
lncol <- c('black','red','blue')
lbls <- c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(tidyData$DateTime,tidyData$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(tidyData$DateTime,tidyData$SubMetering2,col=lncol[2])
lines(tidyData$DateTime,tidyData$SubMetering3,col=lncol[3])

# Plot data on bottom right (2,2)
plot(tidyData$DateTime,tidyData$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')

# Close graphics device
x <- dev.off()
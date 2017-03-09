# Open graphics device
png(filename='plot3.png',width=480,height=480,units='px')

# Plot data
lncol <- c('black','red','blue')
lbls <- c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(tidyData$DateTime,tidyData$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(tidyData$DateTime,tidyData$SubMetering2,col=lncol[2])
lines(tidyData$DateTime,tidyData$SubMetering3,col=lncol[3])

# Add legend
legend('topright',legend=lbls,col=lncol,lty='solid')

# Close device
x<-dev.off()
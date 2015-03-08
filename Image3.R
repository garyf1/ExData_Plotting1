#-- ------------------------------------------------------
# Author: Gary Fay
# Class: R Exploratory Data Analysis
# March 2015

commonName = './data/FebElectricData.rds' 
load(file=commonName)

#Plot 3
png(filename='images/plot3.png')
# Make plot

hist(febData$Global_active_power, main='Global Active Power',
     xlab='Global Active Power (kilowatts)', col='red')

#start the plot
plot(febData$date_time, febData$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')

# add 2 as red
lines(febData$date_time, febData$Sub_metering_2, col='red')

# add 3 in blue
lines(febData$date_time, febData$Sub_metering_3, col='blue')

# Add a legend in the top right ...
legend('topright',
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'),
       lty='solid')
# Turn off device
dev.off()



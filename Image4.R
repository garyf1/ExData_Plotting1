#-- ------------------------------------------------------
# Author: Gary Fay
# Class: R Exploratory Data Analysis
# March 2015

commonName = './data/FebElectricData.rds' 
load(file=commonName)

#Plot 4
png(filename='images/plot4.png')

## Make images in a 2 x 2 grid
par(mfrow=c(2,2))

# Top left (image 1)
plot(febData$date_time, febData$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right (image 2)
plot(febData$date_time, febData$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

# Bottom left (image 3)
plot(febData$date_time, febData$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(febData$date_time, febData$Sub_metering_2, col='red')
lines(febData$date_time, febData$Sub_metering_3, col='blue')
legend('topright',
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'),
       lty='solid', bty='n')

# Bottom right (new image)
plot(febData$date_time, febData$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Turn off device
dev.off()
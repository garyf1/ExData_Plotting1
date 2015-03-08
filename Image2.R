#-- ------------------------------------------------------
# Author: Gary Fay
# Class: R Exploratory Data Analysis
# March 2015

commonName = './data/FebElectricData.rds' 
load(file=commonName)

# Plot 2
png(filename='images/plot2.png')
# Make plot
plot(febData$date_time, febData$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')
# Turn off device
dev.off()



#-- ------------------------------------------------------
# Author: Gary Fay
# Class: R Exploratory Data Analysis
# March 2015

commonName = './data/FebElectricData.rds' 
load(file=commonName)

#Plot 1

png(filename='images/plot1.png')
# Make plot
hist(febData$Global_active_power, main='Global Active Power',
     xlab='Global Active Power (kilowatts)', col='red')
# Turn off device
dev.off()



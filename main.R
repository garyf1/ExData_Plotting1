# setwd("C:/Users/Gary/Downloads/coursera/explore")
# Library loading
library(rcurl)
library(lubridate)
library(dplyr)
library(utils)

 
dataLink <- "https://d396qusza40orc.cloudfront.net/exdata/data/household_power_consumption.zip"
dlFile<-'./data/power-data.zip'
 
download.file( url=dataLink,     destfile=dlFile  ) 
unzip(dlFile, exdir='./data')
dataFile <- './data/household_power_consumption.txt'

powerData <- read.table(dataFile, header=TRUE, sep=';')
febData <- subset(powerData, Date=='1/2/2007' | Date=='2/2/2007')

# Convert dates and times
#febData$Date <- dmy(febData$Date)
#febData$Time <- hms(febData$Time)
febData$Global_active_power <- as.numeric( febData$Global_active_power )

febData <- mutate( febData,     date_time =(dmy(Date) + hms(Time)) )

commonName = './data/FebElectricData.rds' 
save(febData, file=commonName)

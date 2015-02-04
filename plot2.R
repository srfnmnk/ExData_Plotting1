#Program Created by Daniel Tomes, 2-3-15
#Data "household_power_consumption.txt" must be in your working directory
#If you do not have it you may obtain it from the link below.
#The Data is sourced from the UC Irvine Machine Learning Repository
#https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

#read data
tmp <- read.delim("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
#subset the data
powercon <- subset(tmp, as.Date(tmp$Date, "%d/%m/%Y") == "2007-02-01" | as.Date(tmp$Date, "%d/%m/%Y") == "2007-02-02")

#plot the data
plot(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)")
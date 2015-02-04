#Program Created by Daniel Tomes, 2-3-15
#Data "household_power_consumption.txt" must be in your working directory
#If you do not have it you may obtain it from the link below.
#The Data is sourced from the UC Irvine Machine Learning Repository
#https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

#read data
tmp <- read.delim("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
#subset the data
powercon <- subset(tmp, as.Date(tmp$Date, "%d/%m/%Y") == "2007-02-01" | as.Date(tmp$Date, "%d/%m/%Y") == "2007-02-02")

#set plot space to 4 zones for plots
par(mfrow=c(2,2))

#plot1
plot(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)")

#plot2
plot(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Voltage, type="l", xlab = "datetime", ylab="Voltage")

#plot3
with(powercon, plot(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"),powercon$Sub_metering_1, type="n", 
	xlab="", ylab="Energy Sub Metering"))
with(powercon, lines(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Sub_metering_1, col="black"))
with(powercon, lines(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Sub_metering_2, col="red"))
with(powercon, lines(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Sub_metering_3, col="blue"))
legend("topright", lty=1, bty="n", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#plot4
plot(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Global_reactive_power, type="l", xlab = "datetime", ylab="Global_reactive_power")
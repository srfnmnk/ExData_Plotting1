with(powercon, plot(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"),powercon$Sub_metering_1, type="n", 
	xlab="", ylab="Energy Sub Metering"))
with(powercon, lines(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Sub_metering_1, col="black"))
with(powercon, lines(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Sub_metering_2, col="red"))
with(powercon, lines(as.POSIXct(paste(powercon$Date, powercon$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC"), powercon$Sub_metering_3, col="blue"))
legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

tmp <- read.delim("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
powercon <- subset(tmp, as.Date(tmp$Date, "%d/%m/%Y") == "2007-02-01" | as.Date(tmp$Date, "%d/%m/%Y") == "2007-02-02")
hist(as.numeric(powercon$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
png("C:\\Dev\\git\\coursera\\ExData_Plotting1\\plot1.png", width = 480, height = 480, units = "px")
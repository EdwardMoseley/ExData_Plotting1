data <- read.table("/Users/Edward/Desktop/ExData_Plotting1-master/household_power_consumption.txt", 
                   header=TRUE, 
                   sep=";", 
                   stringsAsFactors=FALSE, 
                   dec=".")

time <- strptime(paste(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Date, data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Global_active_power)
GRP <- as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Global_reactive_power)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(time, GAP, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(time, as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Voltage), type="l", xlab="datetime", ylab="Voltage")

plot(time, as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(time, as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Sub_metering_2), type="l", col="red")
lines(time, as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(time, GRP, type="l", xlab="time", ylab="Global Reactive Power")
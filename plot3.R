data <- read.table("/Users/Edward/Desktop/ExData_Plotting1-master/household_power_consumption.txt", 
                   header=TRUE, 
                   sep=";", 
                   stringsAsFactors=FALSE, 
                   dec=".")

time <- strptime(paste(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Date, 
                           data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Time, sep=" "), 
                     "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
plot(time, as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(time, as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Sub_metering_2), type="l", col="red")
lines(time, as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
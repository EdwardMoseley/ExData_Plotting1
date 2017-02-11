data <- read.table("/Users/Edward/Desktop/ExData_Plotting1-master/household_power_consumption.txt", 
                   header=TRUE, 
                   sep=";", 
                   stringsAsFactors=FALSE, 
                   dec=".")

GAP <- as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Global_active_power)
png("plot2.png", width=480, height=480)
plot(strptime(paste(data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Date, 
                    data[data$Date %in% c("1/2/2007","2/2/2007") ,]$Time, sep=" "), 
              "%d/%m/%Y %H:%M:%S"), 
     GAP, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kW)")
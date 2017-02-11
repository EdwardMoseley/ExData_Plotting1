data <- read.table("/Users/Edward/Desktop/ExData_Plotting1-master/household_power_consumption.txt", 
                   header=TRUE, 
                   sep=";", 
                   stringsAsFactors=FALSE, 
                   dec=".")

GAP <- as.numeric(data[data$Date %in% c("1/2/2007","2/2/2007"),]$Global_active_power)

png("plot1.png", width=480, height=480)

hist(GAP, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kW)")
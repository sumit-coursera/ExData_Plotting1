#Ensure that the working directory is set to the directory containing this R Script
source("loadData.R")
powerConsumption <- loadPowerConsumptionData()

png(filename="plot3.png", width=480, height=480) 
plot(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Sub_metering_1, col = "black", type="l", ylab="Energy sub metering", xlab="")
lines(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Sub_metering_2, col="red")
lines(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")
dev.off()

print("plot3.png created")
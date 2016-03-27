#Ensure that the working directory is set to the directory containing this R Script
source("loadData.R")
powerConsumption <- loadPowerConsumptionData()

png(filename="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Global_active_power, col = "black", type="l", ylab="Global Active Power", xlab="")
plot(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Voltage, col = "black", type="l", ylab="Voltage", xlab="datetime")
plot(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Sub_metering_1, col = "black", type="l", ylab="Energy sub metering", xlab="")
lines(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Sub_metering_2, col="red")
lines(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")
plot(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Global_reactive_power, col = "black", type="l", ylab="Global_reactive_power", xlab="datetime")
dev.off()

print("plot4.png created")


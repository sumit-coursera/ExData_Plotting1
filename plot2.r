#Ensure that the working directory is set to the directory containing this R Script
source("loadData.R")
powerConsumption <- loadPowerConsumptionData()

png(filename="plot2.png", width=480, height=480)
plot(x=as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S"), y = powerConsumption$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()

print("plot2.png created")
#Ensure that the working directory is set to the directory containing this R Script
source("loadData.R")
powerConsumption <- loadPowerConsumptionData()

png(filename="plot1.png", width=480, height=480)
hist(powerConsumption$Global_active_power, xlab = "Global Active Power (kilowatts)", main= "Global Active Power", col="red")
dev.off()

print("plot1.png created")

loadPowerConsumptionData <- function(){
  
  #Download and extract data if necessary
  
  if(!file.exists("household_power_consumption.txt")){
    if(!file.exists("household_power_consumption.zip")){
      download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","household_power_consumption.zip")
    }
    unzip(zipfile = "household_power_consumption.zip")
  }
  
  #Just read the required data  1/2/2007 and 2/2/2007 
  powerConsumption <- read.table("household_power_consumption.txt", header= F, sep=';', skip = 66637,nrows=69517 - 66637)
  headers <- read.table("household_power_consumption.txt", header= T, sep=';', nrows = 1)
  colnames(powerConsumption) <- colnames(headers) 
  
  powerConsumption$Global_active_power <- as.numeric(powerConsumption$Global_active_power)
  powerConsumption$Global_reactive_power <- as.numeric(powerConsumption$Global_reactive_power)
  powerConsumption$Sub_metering_1 <- as.numeric(powerConsumption$Sub_metering_1)
  powerConsumption$Sub_metering_2 <- as.numeric(powerConsumption$Sub_metering_2)
  powerConsumption$Sub_metering_3 <- as.numeric(powerConsumption$Sub_metering_3)
  
  return(powerConsumption)
}

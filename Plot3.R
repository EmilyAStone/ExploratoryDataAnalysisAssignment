HouseholdPowerData <- read.table('C:/Users/EAStone/Documents/Exploratory Data Analysis/Graphs/Assignment Week 1/household_power_consumption.txt', header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
HouseholdPowerData 
subsetdata <- HouseholdPowerData[HouseholdPowerData$Date %in% c("1/2/2007","2/2/2007"),]
subsetdata

globalActivePower <- as.numeric(subsetdata$Global_active_power)
globalReactivePower <- as.numeric(subsetdata$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)

#line graph
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

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

#Creating histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

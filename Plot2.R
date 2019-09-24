#Import the Data 
setwd("~/Desktop/Coursera/Exploratory Data Analysis")
data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#Converting Data 
data_part <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
data_part$Date <- as.Date(data_part$Date, format="%d/%m/%Y")
Timedata <- paste(data_part$Date, data_part$Time)
data_part$Datetime <- as.POSIXct(Timedata)


#Plotting & Saving Plot Nr. 2
png("plot2.png", height=480, width=480)
with(data_part, {
        plot(Global_active_power~data_part$Datetime, type="l",
             ylab="Global Active Power (kilowatts)", xlab="")
})



#Clearing
dev.off()
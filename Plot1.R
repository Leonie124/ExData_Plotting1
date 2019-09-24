#Import the Data 
setwd("~/Desktop/Coursera/Exploratory Data Analysis")
data  <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

#Convert the Date and Time 
data_part <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
data_part$Date <- as.Date(data_part$Date, format="%d/%m/%Y")

#Plotting & Saving Plot Nr.1 

png("plot1.png", width=480, height=480)
hist(data_part$Global_active_power, main="Global Active Power", 
      xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")



#Clearing 
dev.off()


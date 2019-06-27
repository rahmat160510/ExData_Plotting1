setwd("C:/Users/rhidayatulla/Documents/0000 Data Science/Coursera/Exploratory Data Analysis")


data1 <- subset(household_power_consumption, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
data1$Global_active_power <- as.numeric(data1$Global_active_power)
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

png("plot1.png", width=480, height=480)
dev.off()

#plot 2
#upload the necessary libraries
library(lubridate)
library(data.table)

#re-formatting table to meet the appropriate date time set-up
power <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
power$datetime <- with(power, as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))
power <- power[power$datetime > "2007-02-01" & power$datetime < "2007-02-03",]
str(power)

#plot with save to png file
png(filename = "plot2.png")

plot(power$datetime, power$Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)", xlab = "")

dev.off()
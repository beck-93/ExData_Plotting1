#plot4
#created a two by two grid with all four required plots
png(filename = "plot4.png")
par(mfrow=c(2,2), mar = c(4,4,2,4))
plot(power$datetime, power$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
plot(power$datetime, power$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
plot(power$datetime, power$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab =  "")
lines(power$datetime, power$Sub_metering_1, col = "black")
lines(power$datetime, power$Sub_metering_2, col = "red")
lines(power$datetime, power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, lwd = 1, cex = 0.75, bty = "n")
plot(power$datetime, power$Global_reactive_power, type = "l", ylab = "Global_reative_power", xlab = "datetime")
dev.off()
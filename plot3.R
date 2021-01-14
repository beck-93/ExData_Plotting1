#plot3
#saving colored sub meter plot to png file
png(filename = "plot3.png")
plot(power$datetime, power$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab =  "")
lines(power$datetime, power$Sub_metering_1, col = "black")
lines(power$datetime, power$Sub_metering_2, col = "red")
lines(power$datetime, power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, lwd = 1)
dev.off()
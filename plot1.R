#checking to make sure there is enough memory in computer before upload
memory.size()
#doing a calcuation to see how much memory the file will take
predict_data_size <- function(numeric_size, number_type = "numeric") {
  if(number_type == "integer") {
    byte_per_number = 4
  } else if(number_type == "numeric") {
    byte_per_number = 8 #[ 8 bytes por numero]
  } else {
    stop(sprintf("Unknown number_type: %s", number_type))
  }
  estimate_size_in_bytes = (numeric_size * byte_per_number)
  class(estimate_size_in_bytes) = "object_size"
  print(estimate_size_in_bytes, units = "auto")
}
predict_data_size(2075269*9) #142.5 mb

#reading in txt file for household power consumption
library(readtext)
pwr <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
pwr$Date <- strptime(pwr$Date, format = "%d/%m/%Y")
pwr$Date <- as.Date((as.character(pwr$Date)), format = "%d/%m/%Y")
pwr$Time <- strptime(pwr$Time, format = "%H:%M:%S")
str(pwr)
power <- pwr[pwr$Date >= "2007-02-01" & pwr$Date <= "2007-02-02",]
png(filename = "plot1.png")
with(power, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
dev.off()
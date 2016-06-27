#Reading the file
xyz <- file("household_power_consumption.txt")
abc <- read.table(text = grep("^[1,2]/2/2007", readLines(xyz), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Generating Plot 1
hist(abc$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")

#copying the plot into the file plot1.png
dev.copy(png,file="plot1.png")
dev.off()
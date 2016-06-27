#Loading complete data
C_data <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?", nrows = 2075259, check.names = F, stringsAsFactors = F, comment.char = "", quote = '\"')
C_data$Date <- as.Date(C_data$Date, format = "%d/%m/%Y")

#Subsetting the data
data <- subset(C_data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

# Generating Plot 2
plot(data$Global_active_power ~ data$Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

#copying the plot into the file plot2.png
dev.copy(png,file="plot2.png")
dev.off()
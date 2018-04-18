# Read in the Household Power Consumption data from file
hpc <- read.table(file = "household_power_consumption.txt", sep = ";", header = 1, stringsAsFactors = FALSE)

# Format Date column as date and subset for specific dates
hpc$Date <- as.Date(hpc$Date , "%d/%m/%Y")
hpc <- subset(hpc, Date == "2007-02-01" | Date == "2007-02-02")

# Combine the Date and Time in a new column
DateAndTime <- strptime(paste(hpc$Date, hpc$Time), "%Y-%m-%d %H:%M:%S")
hpc <- cbind(hpc, DateAndTime)

# Create png with desired dimensions
png("plot4.png", width=480, height=480)

# Setup 2 by 2 space
par(mfcol = c(2, 2))

# Add first plot
plot(hpc$DateAndTime, hpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

# Add second plot
plot(hpc$DateAndTime, hpc$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(hpc$DateAndTime, hpc$Sub_metering_2, type = "l", col = "red")
points(hpc$DateAndTime, hpc$Sub_metering_3, type = "l", col = "blue")

# Add legend to second plot
legend("topright", lty = 1, lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Add third plot
plot(hpc$DateAndTime, hpc$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# Add fourth plot and close
plot(hpc$DateAndTime, hpc$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()
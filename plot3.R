# Read in the Household Power Consumption data from file
hpc <- read.table(file = "household_power_consumption.txt", sep = ";", header = 1, stringsAsFactors = FALSE)

# Format Date column as date and subset for specific dates
hpc$Date <- as.Date(hpc$Date , "%d/%m/%Y")
hpc <- subset(hpc, Date == "2007-02-01" | Date == "2007-02-02")

# Combine the Date and Time in a new column
DateAndTime <- strptime(paste(hpc$Date, hpc$Time), "%Y-%m-%d %H:%M:%S")
hpc <- cbind(hpc, DateAndTime)

# Create png with desired dimensions
png("plot3.png", width=480, height=480)

# Produce desired plot
plot(hpc$DateAndTime, hpc$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(hpc$DateAndTime, hpc$Sub_metering_2, type = "l", col = "red")
points(hpc$DateAndTime, hpc$Sub_metering_3, type = "l", col = "blue")

# Add legend and close
legend("topright", lty = 1, lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

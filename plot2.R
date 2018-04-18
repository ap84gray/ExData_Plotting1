# Read in the Household Power Consumption data from file
hpc <- read.table(file = "household_power_consumption.txt", sep = ";", header = 1, stringsAsFactors = FALSE)

# Format Date column as date and subset for specific dates
hpc$Date <- as.Date(hpc$Date , "%d/%m/%Y")
hpc <- subset(hpc, Date == "2007-02-01" | Date == "2007-02-02")

# Combine the Date and Time in a new column
DateAndTime <- strptime(paste(hpc$Date, hpc$Time), "%Y-%m-%d %H:%M:%S")
hpc <- cbind(hpc, DateAndTime)

# Create png with desired dimensions
png("plot2.png", width=480, height=480)

# Produce and save desired plot
plot(hpc$DateAndTime, hpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()


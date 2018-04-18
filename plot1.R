# Read in the Household Power Consumption data from file
hpc <- read.table(file = "household_power_consumption.txt", sep = ";", header = 1, stringsAsFactors = FALSE)

# Format Date column as date and subset for specific dates
hpc$Date <- as.Date(hpc$Date , "%d/%m/%Y")
hpc <- subset(hpc, Date == "2007-02-01" | Date == "2007-02-02")

# Create png with desired dimensions
png("plot1.png", width=480, height=480)

# Produce and save desired plot
hist(as.numeric(hpc$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()


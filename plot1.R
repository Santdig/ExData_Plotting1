## Read household_power_consumption data
source('read_hpc_data.R')

## Start a PNG device
png("plot1.png", width=480, height=480)
par(mar=c(4.7, 4.7, 0.7, 0.7))

## Plot the histogram of global active power
hist(hpc$Global_active_power, breaks=12, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

dev.off()
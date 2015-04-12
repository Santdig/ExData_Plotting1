## Read household_power_consumption data
source('read_hpc_data.R')

## Start a PNG device
png("plot2.png", width=480, height=480)
par(mar=c(4.7, 4.7, 0.7, 0.7))

## Plot global active power vs datetime
plot(hpc$Date, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
## Read household_power_consumption data
source('read_hpc_data.R')

## Start a PNG device
png("plot3.png", width=480, height=480)
par(mar=c(4.7, 4.7, 0.7, 0.7))

## Plot sub-metering vs datetime
plot(hpc$Date, hpc$Sub_metering_1, type="n", lwd=1, 
     ylim=c(0, max(c(hpc$Sub_metering_1, hpc$Sub_metering_2, hpc$Sub_metering_3))),
     xlab="", ylab="Energy sub metering")

lines(hpc$Date, hpc$Sub_metering_1, col="black")
lines(hpc$Date, hpc$Sub_metering_2, col="red")
lines(hpc$Date, hpc$Sub_metering_3, col="blue")

legend("topright", lwd=1, 
       col=c("black", "red", "blue"), 
       legend=c("Sub metering 1", "Sub metering 2", "Sub metering 3"))

dev.off()
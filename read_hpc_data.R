## Read household power consumption data
if(!file.exists("household_power_consumption.txt")) {
        fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileUrl, destfile="./household_power_consumption.zip", method="curl")
        setwd("./")
        unzip("./household_power_consumption.zip", files = NULL, list = FALSE, overwrite = TRUE,
              junkpaths = FALSE, exdir = "./", unzip = "internal",
              setTimes = FALSE)
}

hpc <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

## Convert the date column to Date class
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")

## Subset the data for "2007-02-01" and "2007-02-02"
hpc <- hpc[hpc$Date >= as.Date("2007-02-01") & hpc$Date<=as.Date("2007-02-02"),]

## Convert Date and Time columns to POSIXlt class
hpc$Date <- as.POSIXlt(paste(as.Date(hpc$Date, format="%d/%m/%Y"), hpc$Time, sep=" "))
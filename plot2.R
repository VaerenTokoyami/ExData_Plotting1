# This is my second plot for the JHU Exploratory Data Analysis Week 1 Course Project
# Luckily Steps 1-4 should be re-usable for all of the plots for this project.




# Step 1 - Identify Data Repository Source Origin Data

## 1.1 Create Variable to store the dataset URL from project prompt
SourceURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## 1.2 Create variable to store the dataset filename from the URL from the project prompt
SourceFileName <- "household_power_consumption.zip"




# Step 2 - Download, Unzip, & Load the Source Origin Data File

## 2.1 Download (via an if argument so we're not re-downloading the source file for every plot)
if(!file.exists(SourceFileName)) {
  download.file(SourceURL,SourceFileName, mode="wb")
}

## 2.2 Unzip (via an if argument so we're not re-creating the local source file for every plot)
SourceDest <- "household_power_consumption.txt"
if(!file.exists(SourceDest)) {
  unzip(SourceFileName)
}

## 2.3 Load the Data
powerData <- read.table(SourceDest, header=TRUE, sep=";")




# Step 3 - Correct Date Formats and Subset Data as Required by Project Prompt

## 3.1 Format the dates within the 'Date' variable of 'powerData' into a R-readable date format
powerData$Date <- as.Date(powerData$Date, format="%d/%m/%Y")

## 3.2 Create the next subset of the imported data that we'll be utilizing to create the plots
febData <- subset(powerData, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## 3.3 Close (remove) Table 'powerData'
rm(powerData)




# Step 4 - Convert Dates/Times into POSIXct compliant datetime values

## 4.1 Create temp variable 'datetime'
datetime <- paste(as.Date(febData$Date), febData$Time)

## 4.2 Create a new variable as part of febData table known as 'datetime'
febData$datetime <- as.POSIXct(datetime)




# Step 5 - Create Plot 2

## 5.1 Create the Graphics Device for the Plot to be displayed to as a 480x480pixel PNG as identified in the prompt
png("plot2.png",width=480,height=480)

## 5.2 Create the Lineplot for the 2nd plot with Days of week on the X-Axis and Global Active Power on the Y-Axis
plot(febData$Global_active_power~febData$datetime, type="l", xlab="", ylab="Global Active Power (kilowatts)")

## 5.3 Close the device which saves the lineplot to the PNG
dev.off()
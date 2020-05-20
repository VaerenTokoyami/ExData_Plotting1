# This is my first plot for the JHU Exploratory Data Analysis Week 1 Course Project
# Good Luck to everyone- Best Regards, SRM

# Step 1 - Identify Data Repository Source Origin Data
SourceURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
SourceFileName <- "household_power_consumption.zip"


# Step 2 - Download, Unzip, & Load the Source Origin Data File

## Step 2.1 - Download

if(!file.exists(SourceFileName)) {
  download.file(SourceURL,SourceFileName, mode="wb")
}

## Step 2.2 - Unzip

SourceDest <- "household_power_consumption"
if(!file.exists(SourceDest)) {
  unzip(SourceFileName)
}

# Step 2.3 - Load the Data

powerConsumptionDataFile <- paste(SourceDest,".txt", sep = "")
powerData <- read.table(powerConsumptionDataFile)
head(powerData)
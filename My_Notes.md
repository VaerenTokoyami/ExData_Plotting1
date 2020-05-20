## My Notes for WK1 Project
I've found with my last class that writing down my thought process as I work through these projects seems to assist greatly in both my understanding of the concepts of the courses, but also if I need to walk away while I'm working on the project, I have an easy way to quickly get back to work the next time I have a few minutes.

## Assignment Clarity
### Required Tasks
* Re-create the 4 graphs from the README into 4 code files for each of the 4 graphs, and export the graphs into .png format
* The code files should include the R code to read the data so that each plot can be independantly fully reproduced

## How I plan to Tackle this Project
### Task Breakdown
      1) Download the data-set independantly and assess/explore the data-set
      2) Figure out the repeatable loading and closing of the data-set from download to closing read from memory
      3) Beginning with Plot 1 and ending with Plot 4, determine which plotting packages are being used to create the plot and ensure using the proper R display to export easily to PNG format
      4) Compare results with project prompt to ensure color, title, and labeling accuracy
      
### Break

### Time to Evaluate Plot Settings:

#### Plot 1
*Pre-graph Evaluation: Probable Histogram, X-Axis (xlab) is "Global Active Power (kilowatts)", Y-Axis (ylab) is "Frequency", color (col) is "red", Overall Label (main) is "Global Active Power"

#### Plot 2
* Pre-graph Evaluation: Line Graph (plot(type="l")),dates are by day of week, Y-Axis is (ylab) is "Global Active Power (kilowatts)" - will need some experimentation on Date Conversions

#### Plot 3
* Pre-graph Evaluation: 3x subsets with legend, probable line-graph, but possible steps or other options for type... also x-axis via day of week, Y-Axis is (ylab) "Energy sub meeting"

#### Plot 4
<<<<<<< HEAD
* Pre-graph Evaluation: 2x2 Split-Table (created by parameters... par(mfrow=c(2,2))), all share X-Axis time-based (Thu-Sat), 1st plot is Y-Axis (ylab) "Global Active Power" line graph (type="l"); 2nd plot is Y-Axis of voltage, X-Axis contains xlab = "datetime"; 3rd plot same as PLOT 3; 4th plot has Y-Axis of "Global_reactive_power" and X-Axis label of "datetime"

## Start- In-progress Notes:
* Missed the subsetting for only data from February 1st 2007 to February 2nd 2007... at least this will be copy & paste
=======
* Pre-graph Evaluation: 2x2 Split-Table (created by parameters... par(mfrow=c(2,2))), all share X-Axis time-based (Thu-Sat), 1st plot is Y-Axis (ylab) "Global Active Power" line graph (type="l"); 2nd plot is Y-Axis of voltage, X-Axis contains xlab = "datetime"; 3rd plot same as PLOT 3; 4th plot has Y-Axis of "Global_reactive_power" and X-Axis label of "datetime"
>>>>>>> fa8b537fc4f1ae27eea39e48724eb86cb4f69722

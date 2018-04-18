ReadMe

Courera
Exploratory Data Analysis

Week 1 - Project

Peer-graded Assignment:
This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets.
In particular, we will be using the “Individual household electric power consumption Data Set” available on the course web site.

Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. 
Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
Date: Date in format dd/mm/yyyy
Time: time in format hh:mm:ss
Global_active_power: household global minute-averaged active power (in kilowatt)
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
Voltage: minute-averaged voltage (in volt)
Global_intensity: household global minute-averaged current intensity (in ampere)
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

Dataset:
The dataset has 2,075,259 rows and 9 columns. 
First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. Make sure your computer has enough memory (most modern computers should be fine).
We will only be using data from the dates 2007-02-01 and 2007-02-02.

Making Plots: 
Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. 
Your task is to reconstruct the plots available on the course website, all of which were constructed using the base plotting system.

First you will need to fork and clone the following GitHub repository: https://github.com/rdpeng/ExData_Plotting1

For each plot you should

Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
Name each of the plot files as 𝚙𝚕𝚘𝚝𝟷.𝚙𝚗𝚐, 𝚙𝚕𝚘𝚝𝟸.𝚙𝚗𝚐, etc.
Create a separate R code file (𝚙𝚕𝚘𝚝𝟷.𝚁, 𝚙𝚕𝚘𝚝𝟸.𝚁, etc.) that constructs the corresponding plot.
Your code file should include code for reading the data so that the plot can be fully reproduced. 
You must also include the code that creates the PNG file.
Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)
When you are finished with the assignment, push your git repository to GitHub so that the GitHub version of your repository is up to date. 
There should be four PNG files and four R code files, a total of eight files in the top-level folder of the repo.

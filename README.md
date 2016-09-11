
Getting And Cleaning Data Project

===========
Description
===========
This repository contains files needed to analyze data obtained by taking measurements from subjects wearing a smartphone while performing various activities.

The source dataset for which analysis is performed can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


A full description of how that data was obtained is here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


The repository contains the following files:

- 'README.md'

- 'r_analysis.R' - The script used to perform the analysis

- 'data/UCI HAR Dataset/' - Subdirectory containing the source dataset to perform analysis on.  This was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- 'mean_measurements.csv' - The dataset resulting from running the 'analyzeData' function contained in r_analysis.R over the source dataset.

- 'CodeBook.md' - A code book containing a description of all variables and summaries calculated.

=====
Usage
=====
To run the analysis:

  - source("r_analysis.R")
  - resultData <- analyzeData("data/UCI HAR Dataset")

  Additionally, the analyzeData function will write the output dataset to a file called "mean_measurements.csv" in the current working directory.

=====
Notes
=====

 The r_analysis script was run using R version 3.3.1 (2016-06-21) under RGui (64-bit) on the Windows 10 Professional OS

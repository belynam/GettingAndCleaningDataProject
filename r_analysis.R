library(reshape2)
library(plyr)

# Expand measurement names to be more descriptive
prettifyLabel <- function(x) {
	# Insert an underscore between camelCased words
	x <- gsub("([a-z])([A-Z])", "\\1_\\2", x)

	# More descriptive time/frequency measurement labels
	x <- gsub("^t_","time_", x)
	x <- gsub("^f_","frequency_", x)

	# Commas and Hyphens replaced with an underscore
	x <- gsub("[-,]","_", x)

	# Omit function calls with no arguments
	x <- gsub("\\(\\)","", x)

	# All remaining parenthesis are replaced with double underscores
	x <- gsub("(\\(|\\))","__", x)

	# Lowercase all the words
	x <- tolower(x)

	# Better descriptions for 'acc' and 'mag'
	x <- gsub("_acc_", "_acceleration_", x)
	x <- gsub("_mag_", "_magnitude_", x)

	x
}

# Read the data in from the source data set and data source
readData <- function(dataSource,
		     subjectsSource,
		     activitiesSource,
		     measurementsSource,
		     activityTable,
		     subjectColumns,
		     activityColumns,
		     featureLabels) {

    subjects = read.table(subjectsSource, col.names = subjectColumns)
    activityRows = read.table(activitiesSource, col.names = activityColumns)
    measurements = read.table(measurementsSource, col.names = featureLabels)
    activity <- merge(activityRows, activityTable, by.x=activityColumns,
			                             by.y=activityColumns,
                                                     sort=FALSE)[,2]
    data <- cbind(c(dataSource), subjects, activity, measurements)
    names(data)[1] <- "dataSource"
    names(data)[3] <- "activity"
    data
}

# Extract column names that represent
# measurements of mean or standard deviation
getMeanAndStandardDeviationColumnNames <- function(allColumnNames) {

    # Get rid of those column names that have a mean value as
    # an argument to a function call
    # (Recall that we replaced parenthesis with double underscores)
    nonFunctionCallColumns <- allColumnNames[grep("__.*mean.*__", allColumnNames, invert=TRUE)]

    # Of those remaining, get columns containing "mean" or "std"
    nonFunctionCallColumns[grep("(_mean|_std)", nonFunctionCallColumns)]
}

# Analyze dataset, and return a tidy dataset containing the mean
# values of all mean and standard deviation measurements, for each
# data source/subject id/activity
#
# sourceDir : The subdirectory containing the source data,
# e.g. "data/UCI HAR Dataset"
analyzeData <- function() {
    activityColumns <- c("activity_id", "activity")
    featureColumns <- c("feature_id", "feature")
    subjectColumns <- c("subject_id")

    activityTable = read.table("activity_labels.txt", col.names = activityColumns)
    featureLabels = read.table("features.txt", col.names = featureColumns)

    featureLabels <- sapply(featureLabels$feature, prettifyLabel)

    trainingData <- readData("training",
			     "train/subject_train.txt",
			     "train/y_train.txt",
			     "train/X_train.txt",
			     activityTable,
			     subjectColumns,
			     activityColumns[1],
			     featureLabels)

    testData <- readData("test",
			 "test/subject_test.txt",
			 "test/y_test.txt",
			 "test/X_test.txt",
			 activityTable,
			 subjectColumns,
			 activityColumns[1],
			 featureLabels)

    # Combine the two datasets
    allData <- rbind(trainingData, testData)

    # Extract mean and standard deviation columns
    meanOrStdColumns <- getMeanAndStandardDeviationColumnNames(names(allData))

    # Combine the first 3 column names with mean and standard deviation column names
    neededColumns <- c(names(allData)[1:3], meanOrStdColumns)

    # Extract desired columns
    meanStdData <- allData[,neededColumns]

    # Create new dataset, with the mean value for each measurement taken
    # per dataSource/subject/activity
    # Convert the measurement columns into key/value-paired columns in a row
    meltedMeanStdData <- melt(meanStdData, id.vars=names(meanStdData)[1:3])

    # Calculate mean values per source/subject/activity/measurement
    meanStdDataMeans <- ddply(meltedMeanStdData, names(meltedMeanStdData)[1:4], summarize, mean = mean(value))

    write.table(meanStdDataMeans, "mean_measurements.txt", row.name=FALSE)
}

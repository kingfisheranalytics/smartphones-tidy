#####################################################################################################################
#####################################################################################################################
## 	run_analysis.r : A script for merging and cleaning the Human Activity Recognition Using Smartphones Data Set
##
##  Please refer to the (code book) and (read me) for additional information and usage instructions.
#####################################################################################################################
#####################################################################################################################


#####################################################################################################################
## Test for file access and exit gracefully if not.
#####################################################################################################################

dname <- "UCI\ HAR\ Dataset"
if (!file.exists(dname)){
	stop("Error!  This script requires that the current working directory contain the \'UCI HAR Dataset\' data folder.  Please change the working directory to contain this data directory, uncompressed, and try again.")
}


#####################################################################################################################
#####################################################################################################################
## This script requires import and merging of 8 files.  This section loads all the files into dataframes or vectors
## for manipulation.
#####################################################################################################################
#####################################################################################################################
##  Import the variable names (there are more than 500 of them), and create a logical vector of which variables 
##  contain "mean" or "standard deviation (std)" information - the only variables we are interested in.
#####################################################################################################################

message("Loading raw data ... ")
fname <- "UCI\ HAR\ Dataset/features.txt"
raw.column.names <- as.vector(read.table(fname, sep = "" , header = F ,  stringsAsFactors= F)[,2,])

raw.columns.selected <- grepl("mean|std|Std|Mean", raw.column.names, perl=TRUE)

#####################################################################################################################
##  Import the raw data files.  There are two major data sets - "train" and "test" (which are treated identically).
##  Each data set contains:
##    - X_****.txt : 	Table of actual accelerometer data records
##    - y_****.txt : 	   Table of activities associated with each data record
##    - subject_****.txt : Table of subjects associated with each data record
#####################################################################################################################

fname <- "UCI\ HAR\ Dataset/train/X_train.txt"
raw.train.data <-as.vector(read.table(fname, sep = "" , header = F ,  stringsAsFactors= F))

fname <- "UCI\ HAR\ Dataset/train/subject_train.txt"
raw.train.subjects <- read.table(fname, sep = "" , header = F ,  stringsAsFactors= F)

fname <- "UCI\ HAR\ Dataset/train/y_train.txt"
raw.train.activities <- read.table(fname, sep = "" , header = F ,  stringsAsFactors= F)

fname <- "UCI\ HAR\ Dataset/test/X_test.txt"
raw.test.data <-as.vector(read.table(fname, sep = "" , header = F ,  stringsAsFactors= F))

fname <- "UCI\ HAR\ Dataset/test/subject_test.txt"
raw.test.subjects  <- read.table(fname, sep = "" , header = F ,  stringsAsFactors= F)

fname <- "UCI\ HAR\ Dataset/test/y_test.txt"
raw.test.activities  <- read.table(fname, sep = "" , header = F ,  stringsAsFactors= F)

#####################################################################################################################
#####################################################################################################################
## This section combines and appends the raw input data into intermediary files.
#####################################################################################################################
#####################################################################################################################
##  Combine the data sets together, and append variable (column) names.
##  Combine the subject tables together, and append variable (column) names.
##  Combine the activity tables together, and append variable (column) names.
#####################################################################################################################

message("Merging datasets ... ")
raw.combined.data <-rbind(raw.train.data, raw.test.data)
names(raw.combined.data)<-raw.column.names

raw.combined.subjects <-rbind(raw.train.subjects, raw.test.subjects)
names(raw.combined.subjects) <- c("subject")

raw.combined.activities <-rbind(raw.train.activities, raw.test.activities)
names(raw.combined.activities) <- c("activity")


#####################################################################################################################
##  Apply the logical vector to create a reduced data set containing only the variables (columns) that we want.
#####################################################################################################################

raw.combined.filtered <- raw.combined.data[raw.columns.selected]

#####################################################################################################################
##  Clean up the (now unnecessary) intermediary data frames and vectors.
#####################################################################################################################

rm(raw.train.subjects, raw.train.data, raw.train.activities)
rm(raw.test.subjects, raw.test.data, raw.test.activities)
rm(raw.column.names, raw.columns.selected)

#####################################################################################################################
#####################################################################################################################
## This section creates the final dataset, and applies summary functions grouped by subject and activity.
#####################################################################################################################
#####################################################################################################################
##  Integrate the reduced data set, the subject records, and the activity records into one master data frame.
##  The row counts match up, and row order is preserved!
## Again, clean up the intermediary data frames and vectors.
#####################################################################################################################

message("Creating master data set ... ")
reduced <- cbind(raw.combined.subjects, raw.combined.activities, raw.combined.filtered)
rm(raw.combined.subjects, raw.combined.activities, raw.combined.filtered)


#####################################################################################################################
##  Convert the data frame to a data table for fastest multivariate processing speed.  
##  Group the data by subject and activity, and apply the "mean()" function on all other columns.
#####################################################################################################################

message("Applying statistical formulas and tidying up ... ")
library("data.table")
tidy.dt <- data.table(reduced)
grp <- c("subject", "activity")
tidy.analyzed <-tidy.dt[, lapply(.SD, mean), by=grp]


#####################################################################################################################
#####################################################################################################################
## This final section cleans up the final dataset and exports the results.
#####################################################################################################################
#####################################################################################################################
##  Apply "tidying" principles - sort the data by subject and activity so it is easier to scan and manipulate
##  manually.  Clean up intermediary files.
#####################################################################################################################

tidy.final <- tidy.analyzed[order(subject,activity)]

#####################################################################################################################
##  Export the final result as a space delimited text file, and notify the user of success!
##  If the file already exists, overwrite it.
#####################################################################################################################

fname<-"smartphones_tidy.txt"
write.table(tidy.final, fname, row.name=FALSE)
message("Success! Data merging and tidying completed normally, and results written to \'smartphones_tidy.txt\'")
rm(tidy.dt, tidy.analyzed, tidy.final)





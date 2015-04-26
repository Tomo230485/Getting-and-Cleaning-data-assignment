#The script creates the tidy data set by following the requirement given.

## read txt files into R
Following scripts read necessary text files in to R assuming that your working directory is the top directory where all files are saved.  
| testsubject = read.table("test\\subject_test.txt") 
| xtest = read.table("test\\X_test.txt", sep="")  
| ytest = read.table("test\\y_test.txt")  
| trainsubject = read.table("train\\subject_train.txt")  
| xtrain = read.table("train\\X_train.txt", sep="")  
| ytrain = read.table("train\\y_train.txt") 

## name each column
Following scripts allocate the column name by extracting the value from features file and the info from READE ME file provided.  
| colname = read.table("features.txt")  
| colnameset = colname[,2]  
| names(xtest) = colnameset  
| names(ytest) = "activitylabel"  
| names(testsubject) = "subject"  
	
## data combine
Following scripts combine the data and create one single data set as required.  
| testdata = cbind(testsubject,ytest,xtest)  
| traindata = cbind(trainsubject,ytrain,xtrain)  
| names(traindata) = names(testdata)  
| dataset = rbind(testdata,traindata)  
	
## subset mean & std columns
Following scripts subset only the columns that have mean or std values.  
| colselect = c(1,2,grep("mean|std",names(dataset)))  
| dataset2 = dataset[,c(1,2,grep("mean|std",names(dataset)))]  
	
## assign the activitylabel name
Following scripts assign the activity label from activity_label file based on the activity code(1 to 6) in the data set.  
| activity = read.table("activity_labels.txt" , stringsAsFactors=FALSE)  
| names(activity) = c("activitylabel","activitydescription")  
| dataset3 = merge(dataset2,activity, by="activitylabel")  
| dataset3 = dataset3[,c(2,1,82,3:81)]

## assigin column names as tidy format
Following scripts tidy the name of columns to meet the requirements such as no space or symbol in the name, clear name for user to understand i.e,. f = frequency & t = time and all lower letters to prevent confusion.  
| dataset4 = dataset3[,c(1,3:82)]  
| names(dataset4) = gsub("-","",names(dataset4),)  
| names(dataset4) = gsub("\\bt","time",names(dataset4),)  
| names(dataset4) = gsub("\\bf","frequency",names(dataset4),)  
| names(dataset4) = gsub("\\(|\\)","",names(dataset4),)  
| names(dataset4) = gsub(" ","",names(dataset4),)  
| names(dataset4) = tolower(names(dataset4))  
	
## reshape the data in longer format
Following scripts reshape the data set in a longer format where data looks tidier with less columns. Additional columns as features added in order to have value of measurements by features in one row and column.  
| library(reshape2)  
| meltdata = melt(dataset4, id.vars=c("subject","activitydescription"), variable.name="features", value.name="measurements")  
	
## work out mean of measurements by subject & activity & features
Following scripts finds the mean of measurements by subject, activity description and features.  
| tidydata = aggregate(measurements ~ subject + activitydescription + features, data = meltdata, mean)

## Sort the data
Following scripts sort the table to show a set of result by subject, activitydescription and features to achieve a tidy look in the table.  
| library(dplyr)  
| tidydata = arrange(tidydata, subject, activitydescription,features)  
	
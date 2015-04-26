## read txt files into R
testsubject = read.table("test\\subject_test.txt")
xtest = read.table("test\\X_test.txt", sep="")
ytest = read.table("test\\y_test.txt")
trainsubject = read.table("train\\subject_train.txt")
xtrain = read.table("train\\X_train.txt", sep="")
ytrain = read.table("train\\y_train.txt")

## name each column
colname = read.table("features.txt")
colnameset = colname[,2]
names(xtest) = colnameset
names(ytest) = "activitylabel"
names(testsubject) = "subject"

## data combine
testdata = cbind(testsubject,ytest,xtest)
traindata = cbind(trainsubject,ytrain,xtrain)
names(traindata) = names(testdata)
dataset = rbind(testdata,traindata)

## subset mean & std columns
colselect = c(1,2,grep("mean|std",names(dataset)))
dataset2 = dataset[,c(1,2,grep("mean|std",names(dataset)))]

## assign the activitylabel name
activity = read.table("activity_labels.txt" , stringsAsFactors=FALSE)
names(activity) = c("activitylabel","activitydescription")
dataset3 = merge(dataset2,activity, by="activitylabel")
dataset3 = dataset3[,c(2,1,82,3:81)]

## assigin column names as tidy format
dataset4 = dataset3[,c(1,3:82)]
names(dataset4) = gsub("-","",names(dataset4),)
names(dataset4) = gsub("\\bt","time",names(dataset4),)
names(dataset4) = gsub("\\bf","frequency",names(dataset4),)
names(dataset4) = gsub("\\(|\\)","",names(dataset4),)
names(dataset4) = gsub(" ","",names(dataset4),)
names(dataset4) = tolower(names(dataset4))

## reshape the data in longer format
meltdata = melt(dataset4, id.vars=c("subject","activitydescription"), variable.name="features", value.name="measurements")

## work out mean of measurements by subject & activity & features
tidydata = aggregate(measurements ~ subject + activitydescription + features, data = meltdata, mean)

## Sort the data
tidydata = arrange(tidydata, subject, activitydescription,features)
return(tidydata)




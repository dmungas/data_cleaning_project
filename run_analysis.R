
# ------------------------------- Open Data Files -------------------------------------

act_lab <- read.table("data/UCI HAR Dataset/activity_labels.txt")
colnames(act_lab) <- c("V1","activity")
feat_lab <- read.table("data/UCI HAR Dataset/features.txt")
feat_lab$V2 <- gsub("BodyBody","Body",feat_lab$V2)

subj_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
colnames(subj_train) <- "subj_id"
subj_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
colnames(subj_test) <- "subj_id"

train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
train_lab <- read.table("data/UCI HAR Dataset/train/y_train.txt")
train <- cbind(train, train_lab)
colnames(train) <- c(as.vector(feat_lab$V2), "V1")
train <- cbind(subj_train, train)
train$dataset <- "Training"

test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
test_lab <- read.table("data/UCI HAR Dataset/test/y_test.txt")
test <- cbind(test, test_lab)
colnames(test) <- c(as.vector(feat_lab$V2), "V1")
test <- cbind(subj_test, test)
test$dataset <- "Test"



# ---------------------- Merge Training and Test Datasets --------------------------------

comb_df <- rbind(train,test)


# ---------------------- Extract Means and SDs for Measurements --------------------------------

l1 <- grep("mean()", feat_lab$V2)
l2 <- grep("std()", feat_lab$V2)

vars <- c("subj_id","V1","dataset",as.character(feat_lab[l1,"V2"]), as.character(feat_lab[l2,"V2"]))

train_test <- comb_df[,vars]

rm(comb_df)

# -------------------------- Add Activity Labels ---------------------------------------------

train_test <- merge(train_test,act_lab, by="V1")

# -------------------------- Extract Means  ---------------------------------------------

library(dplyr)

by_id_act <- train_test[,!names(train_test) %in% "V1"] %>% group_by(subj_id, activity, dataset)
train_test_mean <- by_id_act %>% summarise_each(funs(mean))

t1 <- colnames(train_test_mean[,4:82])
label <- sapply(t1, function(x) paste(x,"_ave",sep=""))
rm(t1)

colnames(train_test_mean) <- c("subj_id","Activity","dataset",label)

write.table(train_test_mean,"train_test_means.txt", row.name=FALSE)

# ---------------------------------- Create Data Coding File --------------------------------

varlist <- as.data.frame(label)
varlist$var_num <- 4:(nrow(varlist)+3)
row.names(varlist) <- 1:nrow(varlist)

# requires var_descr function
varlist <- cbind(varlist,sapply(varlist$label, function(x) var_descr(x)))
colnames(varlist)[3] <- "description"

varlist$output <- paste(varlist$var_num,".  ",varlist$label,": ",varlist$description, sep="")

# output can be pasted into README.md
print(as.data.frame(varlist$output), quote=FALSE, row.names=FALSE, right=FALSE)

var_descr <- function(x) {
  sig <- NA
  if (grepl("tBodyAcc",x)) {sig = "accelerometer total body signal"}
  if (grepl("tGravityAcc",x)) {sig = "accelerometer total gravity signal"}
  if (grepl("tBodyAccJerk",x)) {sig = "accelerometer total body jerk signal"}
  if (grepl("tBodyGyro",x)) {sig = "gyroscope total body signal"}
  if (grepl("tBodyGyroJerk",x)) {sig = "gyroscope total body jerk signal"}
  if (grepl("tBodyAccMag",x)) {sig = "accelerometer total body signal magnitude"}
  if (grepl("tGravityAccMag",x)) {sig = "accelerometer total gravity signal magnitude"}
  if (grepl("tBodyAccJerkMag",x)) {sig = "accelerometer total body jerk signal magnitude"}
  if (grepl("tBodyGyroMag",x)) {sig = "gyroscope total body signal magnitude"}
  if (grepl("tBodyGyroJerkMag",x)) {sig = "gyroscope total body jerk signal magnitude"}
  if (grepl("fBodyAcc",x)) {sig = "accelerometer total body frequency domain signal"}
  if (grepl("fBodyAccJerk",x)) {sig = "accelerometer total body jerk frequency domain signal"}
  if (grepl("fBodyGyro",x)) {sig = "gyroscope total body frequency domain signal"}
  if (grepl("fBodyAccMag",x)) {sig = "accelerometer total body magnitude frequency domain signal"}
  if (grepl("fBodyAccJerkMag",x)) {sig = "accelerometer total body jerk magnitude frequency domain signal"}
  if (grepl("fBodyGyroMag",x)) {sig = "gyroscope total body magnitude frequency domain signal"}
  if (grepl("fBodyGyroJerkMag",x)) {sig = "gyroscope total body jerk magnitude frequency domain signal"}
  parm <- NA
  if (grepl("mean()",x)) {parm ="within window mean of 128 readings over 2.56 seconds"}
  if (grepl("std()",x)) {parm ="within window standard deviation of 128 readings over 2.56 seconds"}
  axis <- NA
  if(grepl("-X",x)) {axis = "X axis"}
  if(grepl("-Y",x)) {axis = "Y axis"}
  if(grepl("-Z",x)) {axis = "Z axis"}
  ave <- "mean across windows for subject and activity"
  desc <- ifelse(is.na(axis),paste(sig,parm,ave,sep=", "),paste(sig,parm,axis,ave,sep=", "))
  return(desc)
}  


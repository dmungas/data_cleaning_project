
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

source(file="README.RMD")

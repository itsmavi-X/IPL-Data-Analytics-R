#Task Add Missing Value
dataset$City[sample(1:nrow(dataset), 100)] <- NA
dataset$Runs_Team1[sample(1:nrow(dataset), 80)] <- NA
dataset$Runs_Team2[sample(1:nrow(dataset), 80)] <- NA
dataset$Player_of_Match[sample(1:nrow(dataset), 50)] <- NA

colSums(is.na(dataset)) #Checking Missing Vakues in the column

#Add Outliers
dataset$Runs_Team1[sample(1:nrow(dataset),10)] <- c(350,370,400,15,20,380,410,5,430,12)
dataset$Runs_Team2[sample(1:nrow(dataset),10)] <- c(360,390,420,10,25,405,450,18,460,8)

#Remove Missing Values (Data Preprocessing)
clean_dataset <- na.omit(dataset)
dim(dataset)
dim(clean_dataset)
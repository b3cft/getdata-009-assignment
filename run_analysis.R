
run_analysis <- function () {
    features <- read.table('UCI HAR Dataset/features.txt', header=F)[,2]
    X_test <- read.table('UCI HAR Dataset/test/X_test.txt', header = F, col.names = features)
}
data<- read.csv(file.choose(""))
data[data==""]<- NA
library(mice)

impute <- mice(data,m=10,method="pmm",maxit = 15)
data_1 <- complete(impute,7)
write.csv(data_1,"hep_impute.csv")


library(utils)
## Write
# List all installed packages
packlist <- installed.packages()
write.csv(packlist,file="packlist.csv")
## Read
pakker <- read.csv("packlist.csv")
pakker[,1]
install.packages("pakker[,1]")


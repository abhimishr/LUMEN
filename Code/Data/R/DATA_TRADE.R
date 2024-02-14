MyDir <- c("C:/00_MyGAMS/LUMEN_Thanasis")
setwd(sprintf("%s/Code/Data/R", MyDir))
getwd()

library("dplyr")



import0 <- read.csv(sprintf("%s/Data/TRADE_RAW/import_qty.csv",MyDir), sep=",", header=FALSE)
import_qty <- filter(import0, import0$V1 >= '2015')
write.table(import_qty, sprintf("%s/Data/import_qty.csv",MyDir), sep=",", row.names=FALSE, col.names=FALSE)
rm(import0)
gc()

export0 <- read.csv(sprintf("%s/Data/TRADE_RAW/export_qty.csv",MyDir), sep=",", header=FALSE)
export_qty <- filter(export0, export0$V1 >= '2015')
write.table(export_qty, sprintf("%s/Data/export_qty.csv",MyDir), sep=",", row.names=FALSE, col.names=FALSE)
rm(export0)
gc()












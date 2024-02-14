MyDir <- c("C:/00_MyGAMS/LUMEN_Thanasis")
setwd(sprintf("%s/Code/Data/R", MyDir))
getwd()

library("dplyr")


# TI:	irrigated portion of crop
# TH:	rainfed high inputs portion of crop
# TL:	rainfed low inputs portion of crop
# TS:	rainfed subsistence portion of crop

COLNAME <- c("PIXEL","whea","rice","maiz","barl","pmil","smil","sorg","ocer","pota","swpo",
           "yams","cass","orts","bean","chic","cowp","pige","lent","opul","soyb",
           "grou","cnut","oilp","sunf","rape","sesa","ooil","sugc","sugb","cott",
           "ofib","acof","rcof","coco","teas","toba","bana","plnt","trof","temf",
           "vege","rest")


# PRODUCTION --------------------------------------------------------------

# - Production, for each production system and crop, is calculated by 
#   multiplying area harvested with yield. It is measured in metric tons. 
# - The total production of a crop includes the production of all production 
#   systems of that crop.

PROD_TI0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_P_TI2.csv",MyDir), sep=",", header=TRUE)
PROD_TI1 <- subset(PROD_TI0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(PROD_TI1) <- COLNAME
PROD_TI1$rest = PROD_TI1$ofib + PROD_TI1$toba + PROD_TI1$rest
PROD_TI1$ooil = PROD_TI1$sesa + PROD_TI1$ooil 
PROD_TI1 <- subset(PROD_TI1, select = -c(ofib, toba, sesa))
write.csv(PROD_TI1, sprintf("%s/Data/SPAM/FINAL/PROD_TI.csv",MyDir), row.names=FALSE)

PROD_TH0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_P_TH2.csv",MyDir), sep=",", header=TRUE)
PROD_TH1 <- subset(PROD_TH0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(PROD_TH1) <- COLNAME
PROD_TH1$rest = PROD_TH1$ofib + PROD_TH1$toba + PROD_TH1$rest
PROD_TH1$ooil = PROD_TH1$sesa + PROD_TH1$ooil 
PROD_TH1 <- subset(PROD_TH1, select = -c(ofib, toba, sesa))
write.csv(PROD_TH1, sprintf("%s/Data/SPAM/FINAL/PROD_TH.csv",MyDir), row.names=FALSE)
rm(PROD_TH0)
gc()

PROD_TL0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_P_TL2.csv",MyDir), sep=",", header=TRUE)
PROD_TL1 <- subset(PROD_TL0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(PROD_TL1) <- COLNAME
PROD_TL1$rest = PROD_TL1$ofib + PROD_TL1$toba + PROD_TL1$rest
PROD_TL1$ooil = PROD_TL1$sesa + PROD_TL1$ooil 
PROD_TL1 <- subset(PROD_TL1, select = -c(ofib, toba, sesa))
write.csv(PROD_TL1, sprintf("%s/Data/SPAM/FINAL/PROD_TL.csv",MyDir), row.names=FALSE)
rm(PROD_TL0)
gc()

PROD_TS0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_P_TS2.csv",MyDir), sep=",", header=TRUE)
PROD_TS1 <- subset(PROD_TS0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(PROD_TS1) <- COLNAME
PROD_TS1$rest = PROD_TS1$ofib + PROD_TS1$toba + PROD_TS1$rest
PROD_TS1$ooil = PROD_TS1$sesa + PROD_TS1$ooil 
PROD_TS1 <- subset(PROD_TS1, select = -c(ofib, toba, sesa))
write.csv(PROD_TS1, sprintf("%s/Data/SPAM/FINAL/PROD_TS.csv",MyDir), row.names=FALSE)
rm(PROD_TS0)
gc()


# PHYSICAL AREA -----------------------------------------------------------

# - Physical area is measured in a hectare and represents the actual area where 
#   a crop is grown, not counting how often production was harvested from it. 
# - The sum of all physical areas of the four production systems constitute the 
#   total physical area for that crop. 
# - The sum of the physical areas of all crops in a pixel may not be larger than 
#   the pixel size.


AREA_TI0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_A_TI2.csv",MyDir), sep=",", header=TRUE)
AREA_TI1 <- subset(AREA_TI0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(AREA_TI1) <- COLNAME
AREA_TI1$rest = AREA_TI1$ofib + AREA_TI1$toba + AREA_TI1$rest
AREA_TI1$ooil = AREA_TI1$sesa + AREA_TI1$ooil 
AREA_TI1 <- subset(AREA_TI1, select = -c(ofib, toba, sesa))
write.csv(AREA_TI1, sprintf("%s/Data/SPAM/FINAL/AREA_TI.csv",MyDir), row.names=FALSE)
rm(AREA_TI0)
gc()

AREA_TH0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_A_TH2.csv",MyDir), sep=",", header=TRUE)
AREA_TH1 <- subset(AREA_TH0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(AREA_TH1) <- COLNAME
AREA_TH1$rest = AREA_TH1$ofib + AREA_TH1$toba + AREA_TH1$rest
AREA_TH1$ooil = AREA_TH1$sesa + AREA_TH1$ooil 
AREA_TH1 <- subset(AREA_TH1, select = -c(ofib, toba, sesa))
write.csv(AREA_TH1, sprintf("%s/Data/SPAM/FINAL/AREA_TH.csv",MyDir), row.names=FALSE)
rm(AREA_TH0)
gc()


AREA_TL0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_A_TL2.csv",MyDir), sep=",", header=TRUE)
AREA_TL1 <- subset(AREA_TL0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(AREA_TL1) <- COLNAME
AREA_TL1$rest = AREA_TL1$ofib + AREA_TL1$toba + AREA_TL1$rest
AREA_TL1$ooil = AREA_TL1$sesa + AREA_TL1$ooil 
AREA_TL1 <- subset(AREA_TL1, select = -c(ofib, toba, sesa))
write.csv(AREA_TL1, sprintf("%s/Data/SPAM/FINAL/AREA_TL.csv",MyDir), row.names=FALSE)
rm(AREA_TL0)
gc()

AREA_TS0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_A_TS2.csv",MyDir), sep=",", header=TRUE)
AREA_TS1 <- subset(AREA_TS0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(AREA_TS1) <- COLNAME
AREA_TS1$rest = AREA_TS1$ofib + AREA_TS1$toba + AREA_TS1$rest
AREA_TS1$ooil = AREA_TS1$sesa + AREA_TS1$ooil 
AREA_TS1 <- subset(AREA_TS1, select = -c(ofib, toba, sesa))
write.csv(AREA_TS1, sprintf("%s/Data/SPAM/FINAL/AREA_TS.csv",MyDir), row.names=FALSE)
rm(AREA_TS0)
gc()



# HARVESTED AREA ----------------------------------------------------------

# - Harvested area is measured in a hectare. 
# - Harvested area is at least as large as physical area, but sometimes more, 
#   since it also accounts for multiple harvests of a crop on the same plot. 
# - Like for physical area, the harvested area is calculated for each production 
#   system and the sum of all harvested areas of all production systems in a 
#   pixel amount to the total harvested area of the pixel.


HARV_TI0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_H_TI2.csv",MyDir), sep=",", header=TRUE)
HARV_TI1 <- subset(HARV_TI0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(HARV_TI1) <- COLNAME
HARV_TI1$rest = HARV_TI1$ofib + HARV_TI1$toba + HARV_TI1$rest
HARV_TI1$ooil = HARV_TI1$sesa + HARV_TI1$ooil 
HARV_TI1 <- subset(HARV_TI1, select = -c(ofib, toba, sesa))
write.csv(HARV_TI1, sprintf("%s/Data/SPAM/FINAL/HARV_TI.csv",MyDir), row.names=FALSE)
rm(HARV_TI0)
gc()

HARV_TH0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_H_TH2.csv",MyDir), sep=",", header=TRUE)
HARV_TH1 <- subset(HARV_TH0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(HARV_TH1) <- COLNAME
HARV_TH1$rest = HARV_TH1$ofib + HARV_TH1$toba + HARV_TH1$rest
HARV_TH1$ooil = HARV_TH1$sesa + HARV_TH1$ooil 
HARV_TH1 <- subset(HARV_TH1, select = -c(ofib, toba, sesa))
write.csv(HARV_TH1, sprintf("%s/Data/SPAM/FINAL/HARV_TH.csv",MyDir), row.names=FALSE)
rm(HARV_TH0)
gc()

HARV_TL0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_H_TL2.csv",MyDir), sep=",", header=TRUE)
HARV_TL1 <- subset(HARV_TL0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(HARV_TL1) <- COLNAME
HARV_TL1$rest = HARV_TL1$ofib + HARV_TL1$toba + HARV_TL1$rest
HARV_TL1$ooil = HARV_TL1$sesa + HARV_TL1$ooil 
HARV_TL1 <- subset(HARV_TL1, select = -c(ofib, toba, sesa))
write.csv(HARV_TL1, sprintf("%s/Data/SPAM/FINAL/HARV_TL.csv",MyDir), row.names=FALSE)
rm(HARV_TL0)
gc()

HARV_TS0 <- read.csv(sprintf("%s/Data/SPAM/CLEANED/spam2010V2r0_global_H_TS2.csv",MyDir), sep=",", header=TRUE)
HARV_TS1 <- subset(HARV_TS0, select = -c(iso3, prod_level,cell5m,x,y))
colnames(HARV_TS1) <- COLNAME
HARV_TS1$rest = HARV_TS1$ofib + HARV_TS1$toba + HARV_TS1$rest
HARV_TS1$ooil = HARV_TS1$sesa + HARV_TS1$ooil 
HARV_TS1 <- subset(HARV_TS1, select = -c(ofib, toba, sesa))
write.csv(HARV_TS1, sprintf("%s/Data/SPAM/FINAL/HARV_TS.csv",MyDir), row.names=FALSE)
rm(HARV_TS0)
gc()



# MAPPINGS ----------------------------------------------------------------

CTY_TO_PIXEL <- data.frame(PROD_TI0$iso3, PROD_TI0$alloc_key, 1)
colnames(CTY_TO_PIXEL) <- c("Country","Pixel","Value")
write.table(CTY_TO_PIXEL, sprintf("%s/Data/SPAM/FINAL/CTY_TO_PIXEL.csv",MyDir), sep=";", row.names=FALSE, col.names=FALSE)

PIXEL_TO_DIM <- data.frame(PROD_TI0$alloc_key, PROD_TI0$x, PROD_TI0$y, 1)
colnames(PIXEL_TO_DIM) <- c("PIXEL","x","y","Value")
write.table(PIXEL_TO_DIM, sprintf("%s/Data/SPAM/FINAL/PIXEL_TO_DIM.csv",MyDir), sep=";", row.names=FALSE, col.names=FALSE)










setwd("/scratch/ssnyde11/tsrchitect_tssthresh2")


BRV_tsrs_threshold_2 <- read.table(file="TSRsetMerged-1.txt", header=TRUE)

LPB_tsrs_threshold_2 <- read.table(file="TSRsetMerged-2.txt", header=TRUE)

NFL_tsrs_threshold_2 <- read.table(file="TSRsetMerged-3.txt", header=TRUE)

setwd("/scratch/ssnyde11/tsrchitect_tssthresh3")

OA15_tsrs_threshold_3 <- read.table(file="TSRsetMerged-4.txt", header=TRUE)

OA85_tsrs_threshold_3 <- read.table(file="TSRsetMerged-5.txt", header=TRUE)

POV12_tsrs_threshold_3 <- read.table(file="TSRsetMerged-7.txt", header=TRUE)

POV84_tsrs_threshold_3 <- read.table(file="TSRsetMerged-8.txt", header=TRUE)

TEX36_tsrs_threshold_3 <- read.table(file="TSRsetMerged-9.txt", header=TRUE)


BRV_tsrs_threshold_2$ID <- "BRV"
LPB_tsrs_threshold_2$ID <- "LPB"
NFL_tsrs_threshold_2$ID <- "NFL"
OA15_tsrs_threshold_3$ID <- "OA15"
OA85_tsrs_threshold_3$ID <- "OA85"
POV12_tsrs_threshold_3$ID <- "POV12"
POV84_tsrs_threshold_3$ID <- "POV84"
TEX36_tsrs_threshold_3$ID <- "TEX36"

testID <- rbind(BRV_tsrs_threshold_2, LPB_tsrs_threshold_2, NFL_tsrs_threshold_2, OA15_tsrs_threshold_3, OA85_tsrs_threshold_3, POV12_tsrs_threshold_3, POV84_tsrs_threshold_3, TEX36_tsrs_threshold_3)

data.frame.new <- testID[-1:-4]

p <- ggplot(data.frame.new, aes(x=ID, y=tsrSI, fill=ID)) + geom_violin()
p
> p <- ggplot(data.frame.new, aes(x=ID, y=tsrMSI, fill=ID)) + geom_violin()
> p
> p <- ggplot(data.frame.new, aes(x=ID, y=tsrPeak, fill=ID)) + geom_violin()
> p
p <- ggplot(data.frame.new, aes(x=ID, y=nTSSs, fill=ID))
> p
p <- ggplot(data.frame.new, aes(x=ID, y=nTSSs, fill=ID)) + geom_violin()
> p
p
p <- ggplot(data.frame.new, aes(x=ID, y=nTAGs, fill=ID)) + geom_violin()
p
p <- ggplot(data.frame.new, aes(x=ID, y=tsrWdth, fill=ID)) + geom_violin()
> p


library(ggplot2)
library(reshape)

a = read.table("ov-ranking-h.txt",sep='\t', header=T, quote = "\"", stringsAsFactors = F)
df.m <- melt(a)

ggplot(df.m, aes(x = value,y = ..density.., colour = variable)) + geom_freqpoly(size=1)

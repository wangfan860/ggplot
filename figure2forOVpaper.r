setwd("C:/Users/fwang1/Desktop/OV DRUG/AFFY")

X= read.csv("for-figure2.csv",header=T)
x.order = apply(X ,2, rank)
write.csv(x.order, "ov-ranking-BIBW-AZD6244-ABT888-gefitinib.csv")

data=read.csv("ov-ranking-BIBW-AZD6244-ABT888-gefitinib.csv",header=T)
data_long <- melt(data, id="Pt.ID")

cbbPalette <- c( "#56B4E9",  "#999999")
ggplot(data=data_long,aes(x=Pt.ID, y=value, colour=variable)) +geom_point(size = 1) +theme(legend.text = element_text( size = 10, face = "bold"))+theme(legend.position="bottom")+geom_smooth(method = "lm", se = FALSE, size=0.85) +scale_colour_manual(values=cbbPalette)

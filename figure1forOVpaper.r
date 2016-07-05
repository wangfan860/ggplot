data=read.csv("ggplot.csv",header=T)
data_long <- melt(data, id="Pt.ID")
ggplot(data=data_long,aes(x=Pt.ID, y=value, colour=variable)) +geom_line(size = 0.75) +annotate("rect", xmin = 0, xmax = 257, ymin = -5, ymax = 3.5, alpha = .2)+annotate("rect", xmin = 257, xmax = 521, ymin = -5, ymax = 3.5, alpha = .4)+theme(legend.text = element_text( size = 10, face = "bold"))+theme(legend.position="bottom")

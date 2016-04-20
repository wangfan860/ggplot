library(pheatmap)

a= read.csv("cluster_sensitivity_top20.csv")
rownames(a)=a[,1]
b=data.matrix(a[,3:6])

annotation_row = data.frame(GeneClass = factor(rep(c("DIF", "IMR", "MES","PRO"), c(149, 114, 136,121))))
rownames(annotation_row) = rownames(a)


hmcols<- colorRampPalette(c("green","red"))(10)
pheatmap(b,  annotation_row = annotation_row,cluster_row=FALSE,color=hmcols,fontsize=9, fontsize_row=6, scale="column")

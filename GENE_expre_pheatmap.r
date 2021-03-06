library(pheatmap)

a= read.csv("100gene_expression.csv")
rownames(a)=a[,2]
b=data.matrix(a[,3:522])

annotation_row = data.frame(GeneClass = factor(rep(c("DIF", "IMR", "MES","PRO"), c(20, 22, 37,21))))
rownames(annotation_row) = rownames(a)

 
hmcols<- colorRampPalette(c("blue","red"))(10)
pheatmap(b,  annotation_row = annotation_row,cluster_row=FALSE,color=hmcols,  fontsize=9, fontsize_row=6, scale="row")

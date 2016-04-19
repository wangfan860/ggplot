install.packages("gplots")
library("gplots")


a= read.csv("100gene_expression.csv")
rownames(a)=a[,2]
b=data.matrix(a[,3:522])

color.map <- function(CLASS) {
    if(CLASS=="DIF")
        "#FF0000" else if(CLASS=="IMR") 
            "#00FF00" else if (CLASS=="MES") 
                "#0000FF" else  "#FFFF00"
}
classcolors <- unlist(lapply(a$CLASS, color.map))



heatmap.2(b,col=topo.colors(75), dendrogram='col',RowSideColors=classcolors,Rowv=FALSE, scale="row")

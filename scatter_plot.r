###code was used to draw the relation between paclitaxel ic50 and docetaxel ic50 in CGP

setwd("C:/Users/fwang1/Desktop/OV DRUG/gdsc_en_input_w5.csv")
a=read.csv("pacli_doce_ic50.csv")
plot(a$Paclitaxel_IC_50, a$Docetaxel_IC_50)
abline(fit <- lm(a$Paclitaxel_IC_50~a$Docetaxel_IC_50), col='red')
legend("topright", bty="n", legend=paste("R2 is", format(summary(fit)$adj.r.squared, digits=4)))
title(main="324 Cell lines in CGP")

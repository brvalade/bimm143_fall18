#baby weight data input
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header = T)
#made a custom plot
plot(weight, pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age (months)",ylab="Weight (kg)", main="Baby Weight by Month",type="b")
#1b barplot000.
counts <- read.table("bimm143_05_rstats/feature_counts.txt", header=TRUE, sep="\t")
par(mar=c(3.1, 11.1, 4.1, 2))
barplot(counts$Count,horiz=T, names.arg =counts[,1], main="number of features in the mouse GRCm38 genome",las=1 )
# 2c Histogram
hist( c(rnorm(10000),rnorm(10000)+4),main="breaks default")

hist( c(rnorm(10000),rnorm(10000)+4), breaks=30, main="breaks=30")     

##Plot CHaracters

plot( 1:5, pch=1:5, cex=1:5)
plot( 1:10, pc=1:5, cex=1:5, col=c("red", "blue", "green"))
# section 3
#3A
male.female.counts <- read.table("bimm143_05_rstats/male_female_counts.txt", sep = "\t", header=T)
#rainbow color plot
barplot(male.female.counts$Count, names.arg = male.female.counts$Sample, las=2, col=rainbow(nrow(male.female.counts)))
#alternating colors
barplot(male.female.counts$Count, names.arg = male.female.counts$Sample, las=2, col=c("blue2","red2"))
#3B
genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")
#how many genes
nrow(genes)

#how mant are up, down, all around
table(genes$State)
#plot
palette(c("red","gray","blue"))
plot(genes$Condition1, genes$Condition2, col=genes$State)
# 3c dynamic use of color

meth <- read.delim("bimm143_05_rstats/expression_methylation.txt")
nrow(meth)
#ugly scatter plot
scatter.smooth(meth$gene.meth, meth$expression)
#slightly better
mycols <- densCols(meth$gene.meth, meth$expression)
plot(meth$gene.meth, meth$expression, col=mycols)

#focus on data we want to examine

inds <- meth$expression>0
mycols2 <- densCols(meth$gene.meth[inds],meth$expression[inds])

plot(meth$gene.meth[inds], meth$expression[inds], col=mycols2)
 #try and make colors nicer
dcols.custom <- densCols (meth$gene.meth[inds], meth$expression[inds], colramp=colorRampPalette(c("blue2","green2","red2","yellow")))
plot(meth$gene.meth[inds], meth$expression[inds], col=dcols.custom, pch=20)

  
  
  
  
  
  
  
  
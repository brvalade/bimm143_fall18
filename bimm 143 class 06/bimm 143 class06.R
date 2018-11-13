
rescale <-  function(x){
  rng <- range(x)
  (x-rng[1])/(rng[2]-rng[1])
}
rescale(1:10)
rescale( c(1, 2, 3, NA, 10))
rescale( c(1,2, 3, 10))
rescale ( c(1, 2, 3, 10, "string"))
#
rescale2.electric.boogaloo <-  function(x, na.rm=T, plot=F) {if (na.rm){
  rng <- range( x, na.rm=na.rm)
}else{
  rng <- range(x)
}
print("Hello")
  answer <- (x-rng[1])/(rng[2]-rng[1])
print("is it me you are looking for ")
if(plot) {
  plot(answer, type= "b", lwd=4)
}
print("I can see it in...")
return(answer)
}

#  the code before fixing
library(bio3d)
pdb.analysis <- function (x) {
x.value<- (trim.pdb (read.pdb(x), chain="A", elety="CA"))
plotb3(x.value$atom$b, sse=x.value, typ="h", ylab="Bfactor") 

}
pdb.analysis("4AKE")

#trying to make function work for multiple variables
#trying to make function work for multiple variables
pdb.analysis <- function (x) {
  x.value<- (trim.pdb (read.pdb(x), chain="A", elety="CA"))
  x.b.value <- x.value$atom$b
  return(x.b.value)
}
pdb.4AKE <- pdb.analysis("4AKE")
pdb.1AKE <- pdb.analysis("1AKE")
pdb.1EFY <- pdb.analysis("1EFY")

hc <- hclust( dist(rbind(pdb.4AKE, pdb.1AKE, pdb.1EFY)))
plot(hc)
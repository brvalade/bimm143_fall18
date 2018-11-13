map.colors <- function (value,high.low,palette) {
  proportion <- ((value-high.low[1])/(high.low[2]-high.low[1]))
  index <- round ((length(palette)-1)*proportion)+1
  return (palette[index])
}


map.colors2.electric.boogaloo <- function(x, high.low,palette){
  #determine percent values of the high.low rang
  percent <- ((x-high.low[1]/high.low[2]-high.low[1]))
  #find corresponding index position in the color paletter
  #note catch for 0 percent values to 1
  index <- round((length(palette)-1)*percent)+1
  return (palette[index])
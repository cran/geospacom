addID <-
function(poly,correspondance,area,name){
  l <- nrow(poly@data)
  poly@data[[name]] <- rep(0,nrow(poly@data))
  for (i in 1:l){
    poly@data[[name]][poly@data[[area]]==correspondance[i]] <-i
  }
  return(poly)
}

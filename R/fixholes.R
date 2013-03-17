fixholes <-
function(poly.dat){
  n.poly.all<-numeric()
  for (k in 1:nrow(poly.dat@data)){
    n.poly.all[k]<-length(poly.dat@polygons[[k]]@Polygons)
  }
  has.hole<-which(n.poly.all>1)
  n.poly<-n.poly.all[has.hole]
  n.holes <- length(has.hole)
  for (k in 1:n.holes){
    print(paste("Fixing holes in the shapefile. Please wait. Polygon", k,"of",n.holes))
    for (m in 2:n.poly[k]){
      poly.dat@polygons[[has.hole[k]]]@Polygons[[m]]@hole<-F
    }
  }
  return(poly.dat)
}

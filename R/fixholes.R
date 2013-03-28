fixholes <-
function(poly.dat){
  n.poly.all<-numeric()
  for (k in 1:nrow(poly.dat@data)){
    n.poly.all[k]<-length(poly.dat@polygons[[k]]@Polygons)
  }
  has.hole<-which(n.poly.all>1)
  n.poly<-n.poly.all[has.hole]
  for (k in 1:length(has.hole)){
    print(paste("Fixing holes in the shapefile. Please wait. Polygon", k,"of",length(has.hole)))
      poly.dat@polygons[[has.hole[k]]]@Polygons[[n.poly[k]]]@hole<-F
  }
  return(poly.dat)
}

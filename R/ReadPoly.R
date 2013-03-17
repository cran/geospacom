data(GPS, envir=environment())
ReadPoly <-
function(shapefile, proj = GPS, fix.holes = TRUE, ID = NULL)
{
  polys <-  readShapePoly(shapefile,proj4string = proj,IDvar = ID)
  if (fix.holes) {
    polys <- fixholes(polys)
  }
  return(polys)
}

\name{DistanceMatrix}
\alias{DistanceMatrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Computes distance matrices
}
\description{
  Computes a distance matrix from a given set of polygons
  (\code{\link[sp]{SpatialPolygonsDataFrame}})
}
\usage{
DistanceMatrix(poly, id, unit = 1000, longlat = TRUE, fun = distHaversine)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{poly}{
    A \code{\link[sp]{SpatialPolygonsDataFrame}}
}
  \item{id}{
    The id used to as area ids
}
  \item{unit}{
     meters per unit in the distance matrix. The default \code{unit} = 1000 outputs a distance matrix in kilometres, in most of the cases. 
     With different type of projections \code{unit} can be used to properly calibrate the metric unit.
}
  \item{longlat}{
     if TRUE indicates that the distance is calculated using longitude and latitude coordinates and a spherical distance functions (to be used with \code{CRS} \code{\link[geospacom]{GPS}}). 
     If FALSE, the distance is computed as the euclidean distance on the flat projection (to be used with \code{CRS} \code{\link[geospacom]{CH1903}}). Default is TRUE.
}
  \item{fun}{
     A function to compute distances with longitude and latitude coordinates (e.g., distCosine, distHaversine, distVincenty) to be passed to \code{\link[geosphere]{distm}}. It works only if \code{longlat}=TRUE. Default is \code{\link[geosphere]{distHaversine}}
}
}
\value{
  A square distance matrix
}
\details{
  \code{DistanceMatrix} can be used to automatically compute distance matrices the centroids of polygons included in a \code{\link[sp]{SpatialPolygonsDataFrame}} shape file.
  It uses two functions depending on whether the shape file is a cartographic flat projection or GPS coordinates.
  \enumerate{
    \item If the shape file contains flat projection data (e.g., ) \code{\link[geospacom]{CH1903}}) the option \code{longlat} \ of \code{DistanceMatrix} need to be set to FALSE. In this case the distance is computed as the euclidean distance between the centroids of the polygons.
    \item  If the shape file contains GPS (long-lat) coordinates (e.g., ) \code{\link[geospacom]{GPS}}) and \code{longlat}=TRUE then the distance can be computed using the spherical functions of included in the \code{\link[geosphere]{distm}} function of the \code{geosphere} package: \code{\link[geosphere]{distCosine}}, \code{\link[geosphere]{distHaversine}}, \code{\link[geosphere]{distMeeus}}, \code{\link[geosphere]{distRhumb}},\ \code{\link[geosphere]{distVincentyEllipsoid}}, \code{\link[geosphere]{distVincentySphere}}. These function allow to account for the curvature of the Earth surface, leading to more precise estimates of the distance when extended geographical regions are considered.     
  }
  For relatively small geographical regions the two functions produce very similar results.
  Given that different type of projections use different unit of measure, the \code{unit} option can be used to calibrate the distance matrix to have distances in the desired unit. Particular attention should be given to this step if \code{DistanceMatrix} is used in conjunction with \code{\link[spacom]{WeightMatrix}} because it affects the interpretation of the bandwidth.
  It also to be noted that \code{DistanceMatrix} can compute distance only between polygon centroids. However this may not be the appropriate type of distance depending on the theoretical model and the characteristic of the regions (if polygons are geographical regions)   
}
\author{
  Davide Morselli, Mathieu Cossuta, Till Junge, Sandra Penic, Guy Elcheroth
}

\examples{
## load the CRS projection definition and a shape file
\dontrun{
 data(GPS)
 yu.reg <- ReadPoly("path/to/my/shapefile.shp")
 names(yu.reg) <- "area.name"
}
\dontshow{
data(yu.reg)
}
d.geo <- DistanceMatrix(yu.reg, "area.name",longlat=FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{spatial}% __ONLY ONE__ keyword per line
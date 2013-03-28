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
     A function to compute distances with longitude and latitude coordinates (e.g., distCosine, distHaversine, distVincenty*) to be passed to \code{\link[geosphere]{distm}}. It works only if \code{longlat}=TRUE 
}
}
\value{
  A square distance matrix
}
\author{
  Mathieu Cossuta, Davide Morselli, Till Junge, Sandra Penic, Guy Elcheroth
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
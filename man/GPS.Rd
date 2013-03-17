\name{GPS}
\alias{GPS}
\docType{data}
\title{
  \code{GPS}
}
\description{
  WGS84 projection
}
\usage{data(GPS)}
\format{
  The format is:
  Formal class 'CRS' [package "sp"] with 1 slots
  ..@ projargs: chr "+init=epsg:4326 +proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"
}
\examples{
data(GPS)
## maybe str(GPS) ; plot(GPS) ...
}
\keyword{datasets}

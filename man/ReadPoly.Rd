\name{ReadPoly}
\alias{ReadPoly}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
   Read shape files
}
\description{
 Generates a \code{\link[sp]{SpatialPolygonsDataFrame}} from a shape file
}
\usage{
ReadPoly(shapefile, proj = GPS, fix.holes = TRUE, ID=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{shapefile}{
    Path to a shape file
}
  \item{proj}{
    The projection used in the file, default to GPS   %defaults to the Swiss flat prjection
}
  \item{fix.holes}{
    By default, tries to fix holes in the polygon frame
}
  \item{ID}{
    A character vector to be passed to \code{\link[maptools]{readShapePoly}}. It specifies the name of a column in the .dbf file containing the ID values of the shapes - the values will be converted to a character vector. If NULL (default), the ID of the polygons is taken.
}
}
\value{
      A \code{\link[sp]{SpatialPolygonsDataFrame}}
}
\author{
  Mathieu Cossuta, Davide Morselli
}
\examples{
\dontrun{
data(GPS)
yu.reg <- ReadPoly("path/to/my/shapefile.shp", proj=GPS)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{spatial} % __ONLY ONE__ keyword per line

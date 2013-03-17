\name{addID}
\alias{addID}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 Add an area id to a \code{\link[sp]{SpatialPolygonsDataFrame}} object
}
\description{
  Add an area id to a \code{\link[sp]{SpatialPolygonsDataFrame}} objects
}
\usage{
addID(poly, correspondance, area, name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{poly}{
        A \code{\link[sp]{SpatialPolygonsDataFrame}}
}
  \item{correspondance}{
    a correspondence vector such that \code{correspondance[i]} is the
    label of the \eqn{i}-the area.
}
  \item{area}{
    The current area id in the \code{\link[sp]{SpatialPolygonsDataFrame}}
}
  \item{name}{
    The new area id
}
}
\value{
  \code{\link[sp]{SpatialPolygonsDataFrame}}
}
\author{
 Mathieu Cossutta
}
%%\examples{
%%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{spatial}% __ONLY ONE__ keyword per line

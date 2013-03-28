\name{ImagePoly}
\alias{ImagePoly}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots regional data in map plots
}
\description{
  Can be used to display the results of spatially weighted mulit-level analysis
}
\usage{
ImagePoly(poly, 
	  dataframe, 
	  context.id, 
	  names = NULL, 
      	  show.names = NULL, 
	  method = "equal", 
	  nbr = 10, 
	  ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{poly}{
    A \code{\link[sp]{SpatialPolygonsDataFrame}}
}
  \item{dataframe}{
    A \code{data.frame} object containing the data to be plotted
}
  \item{context.id}{
    The identifier of the column containing the context ids. Must
    correspond to the context ids in \code{poly}
}
  \item{names}{
    A \code{list} of variables in \code{dataframe} we want to plot
}
  \item{show.names}{
    A \code{list} of names to be added to the plots
}
  \item{method}{
   chooses the style to be passed to \code{\link[classInt]{classIntervals}}. It can be "fixed", "sd", "equal", "pretty", 
   "quantile", "kmeans", "hclust", "bclust", "fisher", or "jenks". Default is "equal".
}
  \item{nbr}{
   A \code{numeric} vector that specifies the number of intervals to be displayed on the shape file 
}
  \item{\dots}{
   Other options to be passed to \code{\link[classInt]{classIntervals}}
}
}
\author{
  Mathieu Cossuta, Davide Morselli
}
\examples{
\dontrun{
yu.reg <- ReadPoly("path/to/my/shapefile.shp")
names(yu.reg) <- "area.name"
d.geo <- DistanceMatrix(yu.reg, "area.name")
}
\dontshow{
data(d_geo)
d.geo <- d_geo
}

\dontrun{
data(homog_census)
ImagePoly(yu.reg, homog_census, "Homog_00")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{spatial}% __ONLY ONE__ keyword per line

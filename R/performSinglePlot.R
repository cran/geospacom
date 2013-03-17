performSinglePlot <-
function(poly,name,main=name,method="equal",nbr=10,...)
{
  at = classIntervals(poly@data[[name]], n = nbr, style = method)$brks
  at[length(at)]<- at[length(at)]+0.01
  #col = brewer.pal(nbr,"YlOrRd")
  col=rev(heat.colors(nbr))
  spplot(
    poly,
    name,
    at=at,
    col.regions=col,
    main=main,
    mar=c(0,0,0,0),...
    )
}

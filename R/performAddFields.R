performAddFields <-
function(poly,champ,context.id,names=NULL) {
  y <- as.character(names(champ))
  y <- y[!y==context.id]
  # Check that the names are in y
  for (name in names) {
    if (!name %in% y) {
      stop("The variable '", name, "' is not in the context data")}}
  if (is.null(names)){names <-y}
  l <-length(poly)
  m <-length(names)
  for (k in 1:m){
    name <- names[[k]]
    poly@data[[name]]<- rep(0,l)

    for (i in 1:l)
      {
        #poly@data[[name]][poly@data[[context.id]]==i]<- champ[[name]][i]
        poly@data[[name]][poly@data[[context.id]]==champ[[context.id]][i]]<- champ[[name]][i]
      }
  }
  return(list(poly,names))
}

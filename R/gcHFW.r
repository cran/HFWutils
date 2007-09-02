gcHFW <- function () 
  {
  closeAllConnections()
  do.call(what= "gc",args=list(),envir = globalenv())
  return(NULL)
  } # gcHFW <- function () 
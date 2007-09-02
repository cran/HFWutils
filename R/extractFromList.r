Ex <- function(n,G)
  {
     G$.vars$out[[n]] <- extractSub (G$.vars$mIn,n)
  
  } # Ex <- function


###############################################################################

extractFromList <- function (mIn,names)
  {
  
  
  
   out <- vector("list", length = length(names))
   names(out)<-names
   
   exG <- ByRef(Name="Global",vars = list(out=out,mIn=mIn)   )
  
   lapply(names, Ex, G = exG)
  
  
   return(exG$.vars$out)
  
  } # extractFromList <- function



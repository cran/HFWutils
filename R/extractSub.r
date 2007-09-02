extractSub <- function(mIn,name)
{
  # for speed mIn should be passed by environment/reference

  out0 <- sapply(mIn,function(x)return(x[name]),USE.NAMES = FALSE)
  out  <- matrix(out0)
  
  return(out)
} # extractSub <- function(mIn,name)
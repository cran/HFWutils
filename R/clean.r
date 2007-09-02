Clean_fun <- function (x,pattern)

{
   out <- gsub(pattern= pattern, replacement="", x=x)
   return(out)
} # Clean_fun



setGeneric("Clean", def = function(x,pattern) {standardGeneric("Clean")} )


setMethod("Clean",
   sig = signature(x="list",pattern="character"),
   def = function(x,pattern) lapply(x,Clean_fun,pattern=pattern),
   valueClass = "list"
) # setMethod

setMethod("Clean",
   sig = signature(x="vector",pattern="character"),
   def = function(x,pattern) Clean_fun(x=x,pattern=pattern),
   valueClass = "vector"
) # setMethod

setMethod("Clean",
   sig = signature(x="matrix",pattern="character"),
   def = function(x,pattern) apply(x,2,Clean_fun,pattern=pattern),
   valueClass = "matrix"
) # setMethod

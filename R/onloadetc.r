.onLoad <- function(libname, pkgname)
      {
        require(methods)
        autoload("appendVarArgs", package="R.oo")
        autoload("hasVarArgs", package="R.oo")
        autoload("setMethodS3", package="R.oo")
        autoload("setConstructorS3", package="R.oo")
        
       } # .onLoad <- function
   .constructPaths <- function(pfad)
  
    {
        NS<-.Library %&% "/" %&% loadedNamespaces() %&% "/data"
        pfade <- c(pfad,NS)

        index <- file.exists(pfade)

        return(pfade[index])
        
    } #  constructPaths <- function(pfad)
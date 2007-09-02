  sourceRfiles <- function (pfade="R/")
  
  {
    namesPlus <- list.files(pfade,pattern = "r$",full.names=T)
    # letzer Buchstabe muss ein r sein

    lapply(namesPlus,source)
    
    return(NULL)
    
  } # sourceRfiles <- function
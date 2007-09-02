cleanTexts <- function(x)
  {
    # vectorised clean up does three things
    # a) adds spaces around special characters ,.":!?;()-
    # b) gets rid of multiple spaces
    # c) trims leading and trailing spaces 
     
    x <- as.character(x)
    out <- gsub('\\s*([\\,\\.\\":!?;()-])\\s*', " \\1 ", x) 
    #[\\,\\.\\":!?;()-] sind special characters
    out <- gsub("\\s+", " ", out) # get rid of multiple spaces
    
    out <- trim(out) ## get rid of leading and trailing spaces
    # trim comes from package:gdata
    
    return(out)
    
  } #cleanTexts <- function(x)
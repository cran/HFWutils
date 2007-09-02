initReplaceBy <- function(n)
  {


    ReplaceBy           <-  matrix("",n,2)
    dimnames(ReplaceBy) <-  list(NULL,c('Replace','By'))
    
    
    return( ReplaceBy)
  } # initReplaceBy <- function(n)
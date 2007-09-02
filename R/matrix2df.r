     matrix2df <- function(mIn)
     {
       m <- as.data.frame(mIn[-1,,drop=FALSE])
       names(m) <- mIn[1,]
       return(m)
     } # matrix2df <- function(m)
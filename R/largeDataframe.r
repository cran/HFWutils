  largeDataframe <- function(smallDf,Times)

    {
      
      smallDf.unlisted            <- unlist(smallDf)
             
      M   <- matrix(rep(smallDf.unlisted,times=Times),nrow=Times,byrow=TRUE)
      Df   <- as.data.frame(M)
      names(Df) <- names(smallDf)

      return( Df)

    } # largeDataframe <- function

  largeDataframe <- function(smallDf,Times)

    {

      M   <- matrix(rep(as.matrix(smallDf),times=Times),nrow=Times,byrow=TRUE)
      Df   <- as.data.frame(M)
      names(Df) <- names(as.data.frame(smallDf))


      return( Df)

    } # largeDataframe <- function

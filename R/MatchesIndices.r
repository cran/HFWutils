     MatchesIndices <- function (x,patt,fixed=FALSE)
     {
       indexF             <- function(x)  length(unlist(x))>0
       M                  <- Matches(
                                      Vector = x,
                                      patt   = patt,
                                      fixed  = fixed 
                                      ) # Matches

        out               <- list()
        out$index_x       <- apply(M,1,indexF )
        out$index_patt    <- apply(M,2,indexF )

        return(out)

     } #  MatchesIndices <- function (x,patt)
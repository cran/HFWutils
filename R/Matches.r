  Matches_0 <- function(Vector,patt,fixed)
    {
      #l <- gregexpr('\\w+\\d+',Vector,perl = TRUE)[[1]]
      l <- gregexpr(patt,Vector,fixed=fixed)[[1]]
      ########################################################
      ## für nicht überlappende matches  geht vielleicht auch anders.
      lengths<-attr(l,"match.length")
      index  <- diff(c(-2,l+lengths))!=0
      l <- l[index]
      lengths <- lengths[index]
      #######################################################
      
      index <- !is.na(l) & l!=-1
      myStartNew<-l[index]
      myStopNew<-l[index]+lengths[index]-1
    
      if (length(myStartNew)>0)
        itemsMatchedNew   <- substring(text = Vector, first = myStartNew,last =myStopNew)
      if (length(myStartNew)==0)
        itemsMatchedNew   <- as.character(NULL)
        
    
       
      return(itemsMatchedNew)
  
    } # Matches_0 <- function(Vector,patt,fixed)
  

                        
    Matches_1 <- function(Vector,patt,fixed) as.list(sapply(
                                                      Vector,
                                                      Matches_0,
                                                      patt=patt,
                                                      fixed=fixed,
                                                      simplify=F
                                                      )) # sapply
    Matches   <- function(Vector,patt,fixed=FALSE)
      
      {
       
          matrix(sapply(
                                        patt,
                                        Matches_1,
                                        Vector=Vector,
                                        fixed=fixed
                                        ), # sapply
                  nrow      = length(Vector),
                  ncol      = length(patt),
                  dimnames  = list(Vector,patt)
                  ) # matrix
          
       } # Matches   <- function(Vector,patt,fixed=FALSE)

                
#setGeneric("Matches", def = function(Vector,patt) {standardGeneric("Matches")} )
#
#
#setMethod("Matches",
#   sig = signature(Vector="character",patt="character"),
#   def = MatchesFun,
#   valueClass = "list"
#) # setMethod

    getFunctionName <- function(generationBack = 1)
    {
    #############################################################################
       ################concoct file name using parent functions name


       parentFunction0 <-
         mvb.match.call(
                        definition = sys.function(mvb.sys.parent(generationBack)),
                        call = sys.call(mvb.sys.parent(generationBack)),
                        expand.dots = TRUE
                        ) # parentFunction0 <- mvb.match.call
       # the function from which sqlWrap was called

       parentFunction <- as.character(parentFunction0)[1]
       # convert from "call" to character and uses first element of vector



       return(parentFunction)
       
     } # getFunctionName <- function
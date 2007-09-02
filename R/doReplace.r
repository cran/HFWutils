###############################################################################
FR <- function (x,sC,fixed)
  # x is eine zeile von ReplaceBy
  # example :
  #       Replace                   By
  #       "criterion1Variable"     "BuchwerteMRott"
  {
  sC$.vars <- gsub(x["Replace"],x["By"], sC$.vars, fixed = fixed,ignore.case = TRUE)
  } # FR <- function
###############################################################################

doReplace <- function (sqlCommand, ReplaceBy, fixed = TRUE)

{
##############################################################################    

#############################################################################


    G <- ByRef(Name="Global",vars = sqlCommand)

    apply(ReplaceBy,1, FR, sC = G,fixed=fixed)
    

    
    return(G$.vars )


} # doReplace <- function



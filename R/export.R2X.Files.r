export.R2X.Files <- function(R2X,pfad='data/R2X/')

{

   R_2_X <- names(R2X)
   
   lapply (R_2_X ,write.csv.R2X,R2X=R2X,pfad=pfad)

   return(NULL)

} # export.R2X.Files
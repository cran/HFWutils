export_R2X_Files <- function(G,pfad='data/R2X/')

{

   R_2_X <- names(G$.R2X)

   lapply (R_2_X ,write.csv.R2X,G=G,pfad=pfad)

   return(NULL)

} # export_R2X_Files
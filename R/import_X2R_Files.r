import_X2R_Files <- function(G,pfad='data/X2R/')

{
 
   X_2_R.txt            <- list.files(pfad, pattern = "\\.csv$", full.names = F)
   
   ReplaceBy           <- initReplaceBy(1)
   ReplaceBy[1,]      <- c(Replace = ".csv"          , By = '')
   X_2_R                <- doReplace(X_2_R.txt, ReplaceBy)
    
   G$.X2R <- lapply (X_2_R ,read.csv.X2R,pfad=pfad)
   names(G$.X2R)  <-  X_2_R
   
   return(NULL)

} # import_X2R_Files
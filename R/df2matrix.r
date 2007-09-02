   df2matrix <- function(x_df)
     {
       x_m            <- as.matrix(x_df)
       x_m            <- rbind(names(x_df),x_m)
       dimnames(x_m)  <- NULL
       
       return(x_m)
       
     } # df2matrix <- function(x_df)
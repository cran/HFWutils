   read.csv.X2R <- function (x,pfad='data/X2R/') read.csv(
                                            file = pfad %&% x %&% '.csv',
                                            header=T,
                                            stringsAsFactors=F,
                                            sep=','
                                            ) # read.csv2
                                            
   write.csv.R2X <- function (x,G,pfad='data/R2X/')
                                            write.csv(
                                            G$.R2X[[x]],
                                            file = pfad %&% x %&% '.csv',
                                            row.names=FALSE
                                            ) # read.csv2




#                                            write.table(
#                                            G$.R2X[[x]],
#                                            file = pfad %&% x %&% '.txt',
#                                            row.names=FALSE,
#                                            sep=','
#                                            ) # write.csv2
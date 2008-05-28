   read.csv.X2R <- function (x,pfad='data/X2R/') read.csv(
                                            file = pfad %&% x %&% '.csv',
                                            header=T,
                                            stringsAsFactors=F,
                                            sep=','
                                            ) # read.csv2
                                            
   write.csv.R2X <- function (x,R2X,pfad='data/R2X/')
                                                write.csv(
                                                R2X[[x]] ,
                                                file = pfad %&% x %&% '.csv',
                                                row.names=FALSE
                                                ) # write.csv
                                            



#                                            write.table(
#                                            G$R2X[[x]],
#                                            file = pfad %&% x %&% '.txt',
#                                            row.names=FALSE,
#                                            sep=','
#                                            ) # write.csv2


      logDataframe  <- function(x , fileName = as.character(substitute(x)))


       {
       
         
         
         if (class(x)!="data.frame")
            {
              cat('x is not a data.frame \n')
              print(x)
              return(NULL)
            } # if (class(x)!="data.frame")
            
         

         if  (dim(x)[1])         # ie number of rows is larger than 0
         {
         
           inst()
           Path_fileName_ext   <- "data/dumps/" %&%  fileName %&% ".csv"
           x$dateTime.start    <-  Sys.time()
    
    
           write.table(
                  x     = x,
                  file  = Path_fileName_ext,
                  sep = ";",
                  append=TRUE,
                  col.names = FALSE,
                  qmethod = "double"
                  ) # write.table
                  
           } #  if  dim(x)[1]>0
                
                
      } # logDataframe  <- function(x)


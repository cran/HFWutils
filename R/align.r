    align <- function(names1,names2)
    {
      
         if (length(names1)!=length(names2))
         {
          cat("lengths don't match : " ,"\n",
              "names1 : ", names1      ,"\n",
              "names2 : ", names2      ,"\n"
              ) # cat
          return(NULL)

         } # if
      
         sort(names1,index.return = TRUE)$ix[rank(names2)]

    } # align <- function(names1,names2)
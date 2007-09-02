profiling <- function (s=NULL,myFunction,myEnvirons, ... ,topQuantile = 0.25)
 {

    if (is.null(s))
     {
        Rprof(tmp <- tempfile())
        do.call(myFunction,args=list())
        Rprof(interval=0.02)
        s<-summaryRprof(tmp)
        unlink(tmp) # delete temporary file
      }
      
      row.names(s$by.total) <- Clean(x=row.names(s$by.total),pattern='"')
      namesFromProfiling<-row.names(s$by.total)

    f <- do.call(myEnvirons,args=list())
    
    pdf(file = "data/pics/foodweb All.pdf")
     fwb<-foodweb(funs=f,cex=0.7,charlim=10,...)
    dev.off() 
    
    ff<-names(fwb$level)

    # namesFromProfilinginPackage<- namesFromProfiling %matching% f
    namesFromProfilinginPackage<- namesFromProfiling %in% ff
    # PackageinnamesFromProfiling<-f %in% namesFromProfiling
    sbt <- s$by.total[namesFromProfilinginPackage,]
    o <- order(row.names(sbt))
    sbt_alphebeticalOrder <- sbt[o,]

    ############################################################################
    # add times to function names
    pdf(file = "data/pics/empty.pdf")
      fwb2 <- foodweb(funs=row.names(sbt_alphebeticalOrder),plotting =FALSE)
    dev.off()
    unlink(x = "data/pics/empty.pdf")
    ############################################################################
    
    names(fwb2$level)<-names(fwb2$level[])%&% " " %&% sbt_alphebeticalOrder[,1]
    # fwb$level[] <- s$by.total[namesFromProfilinginPackage,1] # set time as level / height in plot
    ############################################################################
    pdf(file = "data/pics/profiling All.pdf")
     foodweb(fwb2,cex=0.7,charlim=10, ...)
    dev.off()
    ############################# top quartile #################################
    
    tQ <- ceiling(dim(sbt)[1] * topQuantile) + 1
    sbt_tQ <- sbt[1:tQ,]
    
    pdf(file = "data/pics/foodweb topQuantile.pdf")
     fwb3<-foodweb(funs=row.names(sbt_tQ),cex=0.7,charlim=10, ...)
    dev.off()
    
    names(fwb3$level)<-names(fwb3$level[])%&% " " %&% sbt_tQ[,1]
    ############################################################################
    pdf(file = "data/pics/profiling topQuantile.pdf")
     foodweb(fwb3,cex=0.7,charlim=10, ...)
    dev.off()
    ############################# end top quartile #############################
    
    return(s)
  } # profiling <- function (s=NULL,myFunction,myEnvirons, ... ,topQuantile = 0.25)
  
  
  
  
  
  
  
  
  
  

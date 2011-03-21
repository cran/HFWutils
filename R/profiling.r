profiling <- function (s=NULL,myFunction,myFunctionsBase,plotType = c("profilingAll", "profilingTopQuantile" , "foodwebAll", "foodwebTopQuantile"),cex = 1,  ... ,topQuantile = 0.25)
 {

    plottingProfilingAll 		<- FALSE
    plottingProfilingTopQuantile 	<- FALSE
    plottingFoodwebAll 			<- FALSE
    plottingFoodwebTopQuantile 		<- FALSE


   # Check plotType:
    plotType = plotType[1]
      if  (plotType == 'profilingAll') plottingProfilingAll = TRUE
      if  (plotType == 'profilingTopQuantile') plottingProfilingTopQuantile = TRUE
      if  (plotType == 'foodwebAll') plottingFoodwebAll = TRUE
      if  (plotType == 'foodwebTopQuantile') plottingFoodwebTopQuantile = TRUE   
      if  (plotType %!in%  c("profilingAll", "profilingTopQuantile" , "foodwebAll", "foodwebTopQuantile")) stop("plotType misspecified: profilingAll, profilingTopQuantile , foodwebAll, foodwebTopQuantile")


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
      
    
    ## plottingFoodwebAll
    fwb<-foodweb(funs=myFunctionsBase,cex=cex,charlim=10,plotting =plottingFoodwebAll, ...)
    
    ff<-names(fwb$level)

    # namesFromProfilinginPackage<- namesFromProfiling %matching% f
    namesFromProfilinginPackage<- namesFromProfiling %in% ff
    # PackageinnamesFromProfiling<-f %in% namesFromProfiling
    sbt <- s$by.total[namesFromProfilinginPackage,]
    o <- order(row.names(sbt))
    sbt_alphebeticalOrder <- sbt[o,]

    ############################################################################
    # add times to function names
    fwb2 <- foodweb(funs=row.names(sbt_alphebeticalOrder),plotting =FALSE, ...)

    ############################################################################
    
    names(fwb2$level)<-names(fwb2$level[])%&% " " %&% sbt_alphebeticalOrder[,1]
    # fwb$level[] <- s$by.total[namesFromProfilinginPackage,1] # set time as level / height in plot
    ############################################################################
    ## plottingProfilingAll
    foodweb(fwb2,cex=cex,charlim=10,plotting =plottingProfilingAll, ...)
    ############################# top quartile #################################
    
    tQ <- ceiling(dim(sbt)[1] * topQuantile) + 1
    sbt_tQ <- sbt[1:tQ,]
    
    ## plottingFoodwebTopQuantile
     fwb3<-foodweb(funs=row.names(sbt_tQ),cex=cex,charlim=10, plotting =plottingFoodwebTopQuantile)
    
    names(fwb3$level)<-names(fwb3$level[])%&% " " %&% sbt_tQ[,1]
    ############################################################################
    ## plottingProfilingTopQuantile
    foodweb(fwb3,cex=cex,charlim=10, plotting =plottingProfilingTopQuantile, ...)
    ############################# end top quartile #############################
    
    return(s)
  } # profiling <- function (s=NULL,myFunction,myEnvirons, ... ,topQuantile = 0.25)
  
  
  
  
  
  
  
  
  
  

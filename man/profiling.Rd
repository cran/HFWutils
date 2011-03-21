\name{profiling}
\alias{profiling}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ plots tree of execution times}
\description{
  determines how much time a function its and sub-functions (and sub-functions thereof etc)
  take to run (\sQuote{profiling}). Also draws picture of this using the interrelations of
  functions.
}
\usage{
profiling(      s = NULL, 
                myFunction, 
                myFunctionsBase,
		plotType = c("profilingAll", "profilingTopQuantile" , "foodwebAll", "foodwebTopQuantile"), 
		cex = 1, 
                ... , 
                topQuantile = 0.25)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{s}{is optional; would be the result returned by a previous profiling run}
  \item{myFunction}{ myFunction is the function to be profiled}
  \item{myFunctionsBase}{is a character vector of the functions that are used in the analysis}
  \item{plotType}{
    a character string either \code{"profilingAll"}, \code{"profilingTopQuantile"} for a foodwebplot including the profiled times
    or a \code{"foodwebAll"}, \code{"foodwebTopQuantile"} for the foodwebplot without the profiled times. TopQuantile shows only the 
    functions that were profiled to take the most time
    }
  \item{cex}{is a standard plot parameter relating to the font size}  
  \item{...}{are additional arguments that will in turn be passed to the \sQuote{foodweb} function}
  \item{topQuantile}{specify the limit for the display of the top time consumers, by quantile}
}

\author{ Felix Wittmann \email{hfwittmann@gmail.com}}
\examples{
   #############################################################################
  
    y <- 0

    testFunction1 <- function(X) 
                        { 
                          for (x in 1:X) {y <- y + x} 
                          return(y)
                        } # function
    testFunction2 <- function(X)  testFunction1(X)
    testFunction3 <- function(X)  testFunction1(X) 
    testFunction4 <- function() {
                                  testFunction2(1000000)
                                  testFunction3(1000000)
                                } # testFunction4 
    
  ##############################################################################
#       namespacePackage <- find.funs("package:base")
      myFunctionsBase <-  find.funs(pos=1) %except% 'ByRef'
      ##ByRef is R.oo-based; R.oo-based contructions don't seem to work with the foodweb from the mvbutils package


   s1<-profiling(myFunction=testFunction4,myFunctionsBase=myFunctionsBase,plotType = "profilingAll")
   s2<-profiling(myFunction=testFunction4,myFunctionsBase=myFunctionsBase,plotType = "profilingTopQuantile")
   s3<-profiling(myFunction=testFunction4,myFunctionsBase=myFunctionsBase,plotType = "foodwebAll")
   s4<-profiling(myFunction=testFunction4,myFunctionsBase=myFunctionsBase,plotType = "foodwebTopQuantile")

}
\keyword{manip}% at least one, from doc/KEYWORDS

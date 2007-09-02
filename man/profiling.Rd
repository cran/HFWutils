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
                myEnvirons, 
                ... , 
                topQuantile = 0.25)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{s}{is optional; would be the result returned by a previous profiling run}
  \item{myFunction}{ myFunction is the function to be profiled}
  \item{myEnvirons}{is a function defining which functions should be included in the analysis}
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
      namespacePackage <- function() find.funs("package:base")
      workspace <- function() find.funs(pos=1)


   s1<-profiling(myFunction=testFunction4,myEnvirons=workspace)

}
\keyword{manip}% at least one, from doc/KEYWORDS

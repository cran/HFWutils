\name{Clean-methods}
\docType{methods}
\alias{Clean-methods}
\alias{Clean}
\alias{Clean,list,character-method}
\alias{Clean,vector,character-method}
\alias{Clean,matrix,character-method}
\title{remove a pattern in an object}
\description{
 ~~ Methods for function \code{Clean} ~~
}
\section{Methods}{
\describe{

\item{x = "list", pattern = "character"}{ method for list object}

\item{x = "vector", pattern = "character"}{ method for vector object }

\item{x = "matrix", pattern = "character"}{ method for matrix object}
}}

\examples{

 pattern <- "aX"
 
 LIST     <- list(paste("aXX",c(1:10)))
 VECTOR   <- paste("aXX",c(1:10))
 MATRIX   <- matrix(paste("aXX",c(1:25)),nrow=5)
 
 Clean(x=LIST,pattern=pattern)
 # [[1]]
 # [1] "X 1"  "X 2"  "X 3"  "X 4"  "X 5"  "X 6"  "X 7"  "X 8"  "X 9"  "X 10"
 
 Clean(x=VECTOR,pattern=pattern)
 # [1] "X 1"  "X 2"  "X 3"  "X 4"  "X 5"  "X 6"  "X 7"  "X 8"  "X 9"  "X 10"
 
 Clean(x=MATRIX,pattern=pattern)
  #         [,1]  [,2]   [,3]   [,4]   [,5]
  #  [1,] "X 1" "X 6"  "X 11" "X 16" "X 21"
  #  [2,] "X 2" "X 7"  "X 12" "X 17" "X 22"
  #  [3,] "X 3" "X 8"  "X 13" "X 18" "X 23"
  #  [4,] "X 4" "X 9"  "X 14" "X 19" "X 24"
  #  [5,] "X 5" "X 10" "X 15" "X 20" "X 25"

}
\author{ Felix Wittmann \email{hfwittmann@gmail.com}}
\keyword{methods}

\name{align}
\alias{align}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ align ordering of two vectors}
\description{
  order one vector to match order of first vector
}
\usage{
align(names1, names2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{names1}{ ~~ Describe \code{names1} here ~~ }
  \item{names2}{ ~~ Describe \code{names2} here ~~ }
}
\details{
  inputs names1,names2 must have same lengths 
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{ ~put references to the literature/web site here ~ }
\author{ Felix Wittmann \email{hfwittmann@gmail.com}}
\note{ ~~ further notes ~~ }
\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
  
    x1 <- 1:4
    x2 <- c(1,3,2,4)
    align(names1=x1, names2=x2)
    # [1] 1 3 2 4
    
    x1 <- LETTERS[1:4]
    x2 <- c(1,3,2,4)
     align(names1=x1, names2=x2)
    # [1] 1 3 2 4
    
    x1 <- LETTERS[1:4]
    x2 <- LETTERS[c(1,3,2,4)]
    align(names1=x1, names2=x2)
    # [1] 1 3 2 4
    
    
    x1 <- LETTERS[1:5]
    x2 <- LETTERS[c(1,3,2,4)]
    align(names1=x1, names2=x2)
    #    lengths don't match :  
    #     names1 :  A B C D E 
    #     names2 :  A C B D 

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}

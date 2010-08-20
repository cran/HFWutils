\name{extractFromList}
\alias{extractFromList}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ extract variables From List}
\description{
  extract data from lists of lists ; these are typically the output of a lapply
  or sapply
}
\usage{
extractFromList(mIn, names)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mIn}{ ~~ Describe \code{mIn} here ~~ }
  \item{names}{ ~~ Describe \code{names} here ~~ }
}
\details{
  ~~ If necessary more details than the description above ~~
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
    
    c1 <- list(a=1,b=2)
    c2 <- list(a=3,b=4)
    
    d<- list(c1,c2)
    d
    #    [[1]]
    #    [[1]]$a
    #    [1] 1
    #    
    #    [[1]]$b
    #    [1] 2
    #    
    #    
    #    [[2]]
    #    [[2]]$a
    #    [1] 3
    #    
    #    [[2]]$b
    #    [1] 4
    
    extractFromList(d,names=c('a','b'))
    
    #$a
    #     [,1]
    #[1,] 1   
    #[2,] 3   
    #
    #$b
    #     [,1]
    #[1,] 2   
    #[2,] 4  

}
\keyword{ manip }% at least one, from doc/KEYWORDS

\name{cleanTexts}
\alias{cleanTexts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{adds spaces, removes multiple spaces, and trims spaces }
\description{
      vectorised clean up does three things
      a) adds spaces around special characters \code{,\\.\\":!?;()-}
      b) gets rid of multiple spaces
      c) trims leading and trailing spaces 
}
\usage{
cleanTexts(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
}
\details{
  ~~ If necessary, more details than the description above ~~
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
\note{ ~~further notes~~ }

\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
  
  s0 <- c('asd:-asdas','asd?asdas')
  # [1] "asd:-asdas" "asd?asdas" 
  cleanTexts(s0)
  # [1] "asd : - asdas" "asd ? asdas" 

}
\keyword{character}% at least one, from doc/KEYWORDS

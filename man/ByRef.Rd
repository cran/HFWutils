\name{ByRef}
\alias{ByRef}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ object for passing by reference }
\description{
  creates object for passing by reference
}
\usage{
ByRef(Name, vars)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Name}{ object name }
  \item{vars}{ Data is put in here as a list }
}
\details{
 creates R.oo object for passing by reference. Data is held in \code{$.vars}
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

  G <- ByRef(Name="Global",vars = 1:10)
  
  G
  # "This is a R.oo object of type Global"
  
  G$.vars
  #  [1]  1  2  3  4  5  6  7  8  9 10
  
  f <- function (x)  G$.vars <- c(G$.vars,11)

  f(G)
  G$.vars
  # [1]  1  2  3  4  5  6  7  8  9 10 11

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

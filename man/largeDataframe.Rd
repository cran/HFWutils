\name{largeDataframe}
\alias{largeDataframe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ produce dataframe with constant columns }
\description{
  produce dataframe with constant columns.  as specified by the input row vector
}
\usage{
largeDataframe(smallDf, Times)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{smallDf}{ input row vector }
  \item{Times}{number of  rows }
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


  
  strategic     <- data.frame(REX = 0.50, DJSTOXX=0.17,SP500=0.17,	SPI=0.08,NIKKEI=0.08)
  
  #  strategic 
  #    REX DJSTOXX SP500  SPI NIKKEI
  #  1 0.5    0.17  0.17 0.08   0.08

  largeDataframe(smallDf=strategic, Times=10)
  #     REX DJSTOXX SP500  SPI NIKKEI
  #  1  0.5    0.17  0.17 0.08   0.08
  #  2  0.5    0.17  0.17 0.08   0.08
  #  3  0.5    0.17  0.17 0.08   0.08
  #  4  0.5    0.17  0.17 0.08   0.08
  #  5  0.5    0.17  0.17 0.08   0.08
  #  6  0.5    0.17  0.17 0.08   0.08
  #  7  0.5    0.17  0.17 0.08   0.08
  #  8  0.5    0.17  0.17 0.08   0.08
  #  9  0.5    0.17  0.17 0.08   0.08
  #  10 0.5    0.17  0.17 0.08   0.08

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

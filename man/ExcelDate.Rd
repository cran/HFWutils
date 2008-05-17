\name{as.ExcelDate}
\alias{as.ExcelDate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ convert date to Excel date integer}
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
as.ExcelDate(DateIn)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DateIn}{ ~~Describe \code{DateIn} here~~ }
}
\details{
   stimmt nicht vor "1900-03-01"
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
\seealso{ ~~objects to See Also as \code{\link{excelDate2Date}}, ~~~ }
\examples{

   as.ExcelDate("2007/01/15")
   # [1] 39097
  
   as.ExcelDate("2007-01-15")
   # [1] 39097
 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}

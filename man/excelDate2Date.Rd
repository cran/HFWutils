\name{excelDate2Date}
\alias{excelDate2Date}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ convert Excel date integer to date}
\description{
  ~~ A concise 1-5 lines description of what the function does. ~~
}
\usage{
excelDate2Date(excelDate)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{excelDate}{ ~~ Describe \code{excelDate} here ~~ }
}
\details{
  stimmt nicht vor 1900-03-01
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
\seealso{ ~~objects to See Also as \code{\link{as.ExcelDate}}, ~~~ }
\examples{
   excelDate2Date(39097)
   # [1] "2007-01-15"
   excelDate2Date(0)
   # "1899-12-30"
   
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

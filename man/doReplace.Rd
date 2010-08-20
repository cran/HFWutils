\name{doReplace}
\alias{doReplace}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ performs replacements in a string }
\description{
  performs replacements in a string using a dataframe set up with initReplaceBy
}
\usage{
doReplace(sqlCommand, ReplaceBy, fixed = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sqlCommand}{the target string }
  \item{ReplaceBy}{ a dataframe set up with initReplaceBy }
  \item{fixed}{ ~~ Describe \code{fixed} here ~~ }
}
\details{
  ~~ If necessary  more details than the description above ~~
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
\seealso{ ~~objects to See Also as \code{\link{initReplaceBy}}, ~~~ }
\examples{

      ReplaceBy <- initReplaceBy(2)
      ReplaceBy[1,]  <- c(Replace = "TABLE"          , By = 'USArrests')
      ReplaceBy[2,]  <- c(Replace = "CONDITION"      , By = 'Assault>250')

      sqlCommand <- "SELECT * FROM TABLE WHERE CONDITION"
      doReplace(sqlCommand, ReplaceBy)
      # "SELECT * FROM USArrests WHERE Assault>250"
      
}
\keyword{ manip }% at least one, from doc/KEYWORDS

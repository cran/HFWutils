\name{df2matrix}
\alias{df2matrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ data.frame to  matrix }
\description{
  converts data.frame to  matrix
}
\usage{
df2matrix(x_df)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x_df}{ ~~Describe \code{x_df} here~~ }
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
\seealso{  \code{\link{logDataframe}}, \code{\link{Contacts}} }
\examples{

data(Contacts)
Contacts
#    X           Function         Name        Telephone              Fax
# 1 NA           Function         Name        Telephone              Fax
# 2  1            Contact  Martin Paul    44 207 777777    44 207 777777
# 3  2 Client acquisition Paul Gerhard   44 26 66666666   44 26 66666666
# 4  3     Client service Paris Hilton 44 1222222222222 44 1222222222222
#          E.Mail
# 1        E.Mail
# 2 e@company.com
# 3 e@company.com
# 4 e@company.com



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

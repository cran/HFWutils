\name{export.R2X.Files}
\alias{export.R2X.Files}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~ function to do ... ~~ }
\description{
  export all variables held in R2X into csv files
}
\usage{
export.R2X.Files(R2X, pfad = "data/R2X/")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{R2X}{ is a list}
  \item{pfad}{ can be any folder name }
}
\details{
  R2X is a list.
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{ ~put references to the literature/web site here ~ }
\author{  Felix Wittmann \email{hfwittmann@gmail.com}}
\note{ ~~ further notes ~~ }
\seealso{ ~~objects to See Also as \code{\link{import.X2R.Files}}, ~~~ }
\examples{

x<- 1:10
y <- matrix(LETTERS[1:25],nrow=5,ncol=5)

R2X <- list(x=x,y=y)

inst()
export.R2X.Files(R2X)
# now the variables x and y are saved in correspoding csv files in the folder /data/R2X

X2R <- list()
X2R <- import.X2R.Files('data/R2X/')

# now the variables x and y are loaded from correspoding csv files in the folder /data/R2X into X2R

#> X2R$x
 #   x
#1   1
#2   2
#3   3
#4   4
#5   5
#6   6
#7   7
#8   8
#9   9
#10 10#

#> X2R$y
#  V1 V2 V3 V4 V5
#1  A  F  K  P  U
#2  B  G  L  Q  V
#3  C  H  M  R  W
#4  D  I  N  S  X
#5  E  J  O  T  Y




}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip}
\name{logDataframe}
\alias{logDataframe}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{ save a dataframe in a dumps directory}
\description{
  save data.frame as csv file  in a dumps directory for logging purposes
}
\usage{
logDataframe(x, fileName = as.character(substitute(x)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
  \item{fileName}{ ~~Describe \code{fileName} here~~ }
}
\details{
  append=TRUE
  col.names = FALSE
  sep=','
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
\seealso{  \code{\link{df2matrix}}, \code{\link{Contacts}} }
\examples{

  data(Contacts)
  ContactsTest <- Contacts 
  
  inst()
  unlink("data/dumps/ContactsTest.csv")

  
  ContactsTest
	#	   X           Function         Name        Telephone              Fax        E.Mail
	#	1 NA           Function         Name        Telephone              Fax        E.Mail
	#	2  1            Contact  Martin Paul    44 207 777777    44 207 777777 e@company.com
	#	3  2 Client acquisition Paul Gerhard   44 26 66666666   44 26 66666666 e@company.com
	#	4  3     Client service Paris Hilton 44 1222222222222 44 1222222222222 e@company.com


  logDataframe(ContactsTest)
  read.csv(file="data/dumps/ContactsTest.csv",sep=";")
	  # X1 NA.           Function         Name        Telephone              Fax
	# 1  2   1            Contact  Martin Paul    44 207 777777    44 207 777777
	# 2  3   2 Client acquisition Paul Gerhard   44 26 66666666   44 26 66666666
	# 3  4   3     Client service Paris Hilton 44 1222222222222 44 1222222222222
	#         E.Mail X2007.08.28.19.06.15
	#1 e@company.com  2007-08-28 19:06:15
	#2 e@company.com  2007-08-28 19:06:15
	#3 e@company.com  2007-08-28 19:06:15

  logDataframe(ContactsTest)
  read.csv(file="data/dumps/ContactsTest.csv",sep=";")
	#  X1 NA.           Function         Name        Telephone              Fax
	#1  2   1            Contact  Martin Paul    44 207 777777    44 207 777777
	#2  3   2 Client acquisition Paul Gerhard   44 26 66666666   44 26 66666666
	#3  4   3     Client service Paris Hilton 44 1222222222222 44 1222222222222
	#4  1  NA           Function         Name        Telephone              Fax
	#5  2   1            Contact  Martin Paul    44 207 777777    44 207 777777
	#6  3   2 Client acquisition Paul Gerhard   44 26 66666666   44 26 66666666
	#7  4   3     Client service Paris Hilton 44 1222222222222 44 1222222222222
	#         E.Mail X2007.08.28.19.06.15
	#1 e@company.com  2007-08-28 19:06:15
	#2 e@company.com  2007-08-28 19:06:15
	#3 e@company.com  2007-08-28 19:06:15
	#4        E.Mail  2007-08-28 19:07:10
	#5 e@company.com  2007-08-28 19:07:10
	#6 e@company.com  2007-08-28 19:07:10
	#7 e@company.com  2007-08-28 19:07:10

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

\name{MatchesIndices}
\alias{MatchesIndices}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ provides boolean vectors where matches were found}
\description{
  returns indices whether patterns were matched succesfully in a character vector
}
\usage{
MatchesIndices(x, patt,fixed=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
  \item{patt}{ ~~Describe \code{patt} here~~ }
  \item{fixed}{ ~~Describe \code{fixed} here~~ }
}
\details{
  returns two indices one correspoding to  the character vector, abnother to the
  patterns
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
      # Example 1
        Vector <- "sum(F17:G18)+G190*G2+ sum(A1:B2)"
        patt <- '[A-F]+[0-9]+'
        MatchesIndices (Vector,patt)
        #  $index_x
        #  sum(F17:G18)+G190*G2+ sum(A1:B2) 
        #                              TRUE 
        #  
        #  $index_patt
        #  [A-F]+[0-9]+ 
        #  TRUE        
        
        # Example 2
        MatchesIndices (c(Vector, "sum(A1:B2)"),patt)
                 
        #      $index_x
        #      sum(F17:G18)+G190*G2+ sum(A1:B2)                       sum(A1:B2) 
        #                                  TRUE                             TRUE 
        #      
        #      $index_patt
        #      [A-F]+[0-9]+ 
        #              TRUE 
        
        
        
        # Example 3
        MatchesIndices (x =c("Patrick Pasot, Patrick Schmidt","Patrick Denker"),
                        patt   =c("Patrick","Schmidt")
                        ) # Matches
	#	$index_x
	#	Patrick Pasot, Patrick Schmidt                 Patrick Denker 
	#	                          TRUE                           TRUE 
	#	
	#	$index_patt
	#	Patrick Schmidt 
	#	   TRUE    TRUE 



        # Example 4
        out <-   MatchesIndices (x =c("Patrick Pasot, Patrick Schmidt","Patrick Denker"),
                          patt   =c("Pat[a-z]+")
                           ) # Matches
        
        out
	#	$index_x
	#	Patrick Pasot, Patrick Schmidt                 Patrick Denker 
	#	                          TRUE                           TRUE 
	#	
	#	$index_patt
	#	Pat[a-z]+ 
	#	     TRUE 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip}

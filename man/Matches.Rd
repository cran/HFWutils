\name{Matches}
\alias{Matches}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ string and patterns matching in character Vector
}}
\description{
  perform string and patterns matching in character Vector
}
\usage{
Matches(Vector, patt, fixed = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Vector}{ ~~Describe \code{Vector} here~~ }
  \item{patt}{ ~~Describe \code{patt} here~~ }
  \item{fixed}{ ~~Describe \code{fixed} here~~ }
}
\details{
  result is returned as a matrix
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
        Matches (Vector,patt)
        
        #                                     [A-F]+[0-9]+
        #    sum(F17:G18)+G190*G2+ sum(A1:B2) Character,3 
        
        
        # Example 2
        Matches (c(Vector, "sum(A1:B2)"),patt)
                 
        #                                     [A-F]+[0-9]+
        #   sum(F17:G18)+G190*G2+ sum(A1:B2)  Character,3 
        #   sum(A1:B2)                        Character,2 
        
        
        # Example 3
        Matches (Vector =c("Patrick Pasot, Patrick Schmidt","Patrick Denker"),
                 patt   =c("Patrick","Schmidt")
                  ) # Matches
	  #                               Patrick     Schmidt    
	  #Patrick Pasot, Patrick Schmidt Character,2 "Schmidt"  
       #Patrick Denker                 "Patrick"   Character,0


        # Example 4
        out <-   Matches (Vector =c("Patrof Pasot, Patrum Schmidt","Pater Denker"),
                  patt   =c("Pat[a-z]+")
                   ) # Matches
        
        out
       #                             Pat[a-z]+  
       #Patrof Pasot, Patrum Schmidt Character,2
       #Pater Denker                 "Pater"  v
        
        out[1,1][[1]]
	  #[1] "Patrof" "Patrum"

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

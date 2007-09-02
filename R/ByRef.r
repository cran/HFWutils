  autoload("appendVarArgs"    , package="R.oo")
  autoload("hasVarArgs"       , package="R.oo")
  autoload("setMethodS3"      , package="R.oo")
  autoload("setConstructorS3" , package="R.oo")


  setConstructorS3("ByRef", function(Name,vars) {


    if (missing(Name))   Name <- NA;
    if (missing(vars))   vars <- NA;

    extend(Object(), "ByRef",
      .Name = Name,
      .vars = vars
    )
  }) # setConstructorS3


  setMethodS3("as.character", "ByRef", function(x, ...) {


    out <- paste("This is a R.oo object of type", x$.Name);

    return(out)

  }) # setMethodS3

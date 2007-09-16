inst <- function()
  {
  
  currentWd <-  getwd()
  names <- strsplit(currentWd, "/")[[1]]
  folderName <- names[length(names)]
  PackageName <- strsplit(folderName, "\\.")[[1]][1]
  
  n_fromtheRight <- max(1,nchar(folderName)-6)
  folderName_n_fromtheRight <- substring(text=folderName, first = n_fromtheRight)

  if (!file.exists('data'))
  # if (folderName_n_fromtheRight == ".Rcheck")
    # ie folderName of working directory contains ".Rcheck"
    {
      # setwd(PackageName)
      dir.create("data")          		# make directory
      dir.create("data/dumps")          # make directory
      dir.create("data/dumps")          # make directory
      dir.create("data/dumps/last")     # make directory
      dir.create("data/dumps/specific") # make directory
      dir.create("data/pics")           # make directory
      dir.create("data/updates")        # make directory
    } # if 
  
  
  return("")
  # return(instCHECK()) # use in R CMD CHECK
  # return(instINSTALL()) # use in R CMD INSTALL
  }

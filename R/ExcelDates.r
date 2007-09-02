################################################################################
  as.ExcelDate <- function(DateIn)
  {

    if (class(DateIn)[1]=="integer") return( DateIn)


    excelDate <- as.Date(DateIn) - as.Date("1900-01-01") + 2

    return(as.integer(excelDate))


  } # as.ExcelDate <- function
################################################################################





################################################################################
  excelDate2Date <- function(excelDate)
  {

    Date <- excelDate + as.Date("1900-01-01") - 2

    return(Date)

  } # excelDate2Date <- function
################################################################################
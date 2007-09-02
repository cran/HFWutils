status <- function()
{

 # possible states are
 # 0 : testing mode ; run as .r files , sourced from project file
 # 1 : checking mode 
 # 2 : normal mode;run as package 
   
     
   g <- getAnywhere('status')
   Env<- unclass(g)$where[1]
   
   if ( (Env == ".GlobalEnv") ) return(0) # 0: testing mode
    
   if ( (exists('cleanEx')))    return(1) # 1 : checking mode 

   return(2)                              # 2 : normal mode 
                                              #ie if neither testing mode nor checking mode


} # status <- function()
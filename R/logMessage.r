     logMessage <- function(messageText)
     {



       messages <- data.frame (
                              functionName = getFunctionName(generationBack = 2),
                              messageText  = messageText
                              ) #data.frame

       logDataframe (messages)
     
     } # logMessage <- function
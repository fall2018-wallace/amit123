
CleanDataframe <<- function() 
{
    dfStates <<- dfStates[-1,]
  dfStates <<- dfStates[-52,]
  dfStates <<- dfStates[-9,]
  dfStates <<- dfStates[,-1:-4]
  colnames(dfStates) <<- c("stateName","population","popOver18","percentOver18")
  return(dfStates)
}

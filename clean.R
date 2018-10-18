
CleanDataframe <- function() #Creating new function
{
  dfStates <- read.csv(url("https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv"), stringsAsFactors=FALSE)
  dfStates <<- dfStates[-1,]
  dfStates <<- dfStates[-52,]
  dfStates <<- dfStates[-9,]
  dfStates <<- dfStates[,-1:-4]
  colnames(dfStates) <<- c("stateName","population","popOver18","percentOver18")
  return(dfStates)
}

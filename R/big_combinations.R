#' Combinations formula for large N 
#' 
#' Implements an appoximation of the standard combinations formula using logfactorials
#' 
#' @param r Combination size
#' @param n Number of objects

big_combinations <- function(r,n){
  logNfact <- lfactorial(n)
  logRfact <- lfactorial(r)
  logNRfact <- lfactorial(n-r)
  top <- logNfact
  bottom <- logRfact + logNRfact
  logResult <- top - bottom
  return(exp(logResult))
}
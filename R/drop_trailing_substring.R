#' Drop trailing substring
#' 
#' @param input A character vector of text to be processed
#' @param substrings A character vector of words to be dropped from elements of input

drop_trailing_substring <- function(input,substrings){
  out <- input
  for(i in 1:length(substrings)){
    out <- sub(pattern=paste(substrings[i],".*",sep=""),replacement="",x=out)
  }
  return(out)
}

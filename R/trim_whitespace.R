#' Trim Whitespace
#' @param input A character vector of input text.

trim_whitespace <- function(input){
  return(gsub("^\\s+|\\s+$", "", input))
} 
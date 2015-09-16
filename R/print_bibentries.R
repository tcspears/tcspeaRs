#'
#' Manually print BibTex entries via knitcitations
#' @param bibentries A character vector of Bibtex entry codes
#' @param biblist A BibEntry object (containing bibentries)
#' @param bibformat (optional) Output format, e.g. 'text' or 'pandoc'. Defaults to 'pandoc'
#' @return A formatted bibliography to be processed by Pandoc
#' 
print_bibentries <- function(bibentries,biblist,...){
  print(biblist[bibentries],.opts=list(...))
}
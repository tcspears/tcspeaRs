#' Add a footnote to a ggplot2 plot
#' 
#' Adds a footnote to the ggplot2 plot in the current graphics device using the grid package.
#' 
#' @param footnote.text Text for the footnote. Defaults to the current date.
#' @param size Size of footnote text
#' @param colour Colour of footnote text
gg_footnote <- function(footnote.text = format(Sys.time(), "%d %b %Y"), size = .7, colour = grey(.5)){
  grid::pushViewport(grid::viewport())
  grid::grid.text(label = footnote.text ,
                  x = grid::unit(1,"npc") - grid::unit(2, "mm"),
                  y = grid::unit(2, "mm"),
                  just = c("right", "bottom"),
                  gp = grid::gpar(cex = size, col = colour))
  grid::popViewport()
}

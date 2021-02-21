#' Functions for accessing palettes
#' @description
#' Functions for accessing palettes
#'
#' @param n number of colours to return
#' @rdname functions
core_range_pal <- function(n) {
  if (n > length(CoreRange)) {
    warning("Insufficient values in manual scale. ", n, " needed but only ",
            length(CoreRange), " provided.", call. = FALSE)
  }
  unname(CoreRange[1:n])
}
#' @rdname functions
munro_pal<- function(n) {
  if (n > length(Munro)) {
    warning("Insufficient values in manual scale. ", n, " needed but only ",
            length(Munro), " provided.", call. = FALSE)
  }
  if (n==2){
    return(unname(Munro[c("Glen of Imaal","Fort of na Fianna")]))
  }else{
    return(unname(Munro[1:n]))
  }
}

#' Scale functions to use with GGPlot2
#'
#' @example inst/examples/examples.R
#' @description
#' scale_fill_* and scale_colour_* functions
#' @param ... see ggplot2 \href{documentation}{https://ggplot2.tidyverse.org/reference/discrete_scale.html}
#' @rdname scales
#' @export
scale_fill_core_range<-function(...){
  ggplot2::discrete_scale(aesthetics = "fill",scale_name = "manual",palette=core_range_pal, ...)
}
#' @param ... see ggplot2 documentation
#' @rdname scales
#' @export
scale_colour_core_range<-function(...){
  ggplot2::discrete_scale(aesthetics = "colour",scale_name = "manual",palette=core_range_pal, ...)
}
#' @param ... see ggplot2 documentation
#' @rdname scales
#' @export
scale_color_core_range<-scale_colour_core_range

#' @param ... see ggplot2 documentation
#' @rdname scales
#' @export
scale_fill_munro<-function(...){
  ggplot2::discrete_scale(aesthetics = "fill",scale_name = "manual",palette=munro_pal, ...)
}
#' @param ... see ggplot2 documentation
#' @rdname scales
#' @export
scale_colour_munro<-function(...){
  ggplot2::discrete_scale(aesthetics = "colour",scale_name = "manual",palette=munro_pal, ...)
}
#' @param ... see ggplot2 documentation
#' @rdname scales
#' @export
scale_color_munro<-scale_colour_munro

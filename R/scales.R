#' Scale functions to use with GGPlot2
#'
#' @description
#' scale_fill_* and scale_colour_* functions
#'
#' @rdname scales
#' @export
scale_fill_core_range<-function(...){
  ggplot2::discrete_scale(aesthetics = "fill",scale_name = "manual",palette=core_range_pal, ...)
}
#' @rdname scales
#' @export
scale_colour_core_range<-function(...){
  ggplot2::discrete_scale(aesthetics = "colour",scale_name = "manual",palette=core_range_pal, ...)
}
#' @rdname scales
#' @export
scale_color_core_range<-scale_colour_core_range

#' @rdname scales
#' @export
scale_fill_munro<-function(...){
  ggplot2::discrete_scale(aesthetics = "fill",scale_name = "manual",palette=munro_pal, ...)
}

#' @rdname scales
#' @export
scale_colour_munro<-function(...){
  ggplot2::discrete_scale(aesthetics = "colour",scale_name = "manual",palette=munro_pal, ...)
}
#' @rdname scales
#' @export
scale_color_munro<-scale_colour_munro

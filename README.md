README
================

<!-- badges: start -->

[![R build
status](https://github.com/jebbd/eightdegrees/workflows/R-CMD-check/badge.svg)](https://github.com/jebbd/eightdegrees/actions)
[![GitHub
version](https://img.shields.io/badge/version-0.3.1-success)](https://github.com/jebbd/eightdegrees/)
[![CC-0
license](https://img.shields.io/badge/License-CC--0-blue.svg)](https://creativecommons.org/licenses/by-nd/4.0)
<!-- badges: end -->
<img align="right" src="inst/pngs/hex_sticker.png" width=150 height=150>

## Eight Degrees Brewing

[Eight Degrees Brewing](https://www.eightdegrees.ie/) are an Irish
brewery in Cork. I was inspired by the colour palette of their limited
edition, Munro series.

Both scale\_colour\_\* and scale\_fill\_\* functions are included. The
structure of this package is heavily inspired by the
[{colorblindr}](https://github.com/clauswilke/colorblindr) 📦.

``` r
install.packages("remotes")
remotes::install_github("jebbd/eightdegrees")
```

### Munro Series

8 colour paired palettes based on the limited edition Munro series

``` r
colorblindr::gg_color_swatches(8)+scale_fill_munro()

tibble(
  a=rnorm(100),b=rnorm(100,mean=1),c=rnorm(100,mean=2),d=rnorm(100,mean=3),
  e=rnorm(100),f=rnorm(100,mean=-1),g=rnorm(100,mean=-2),h=rnorm(100,mean=-3)
  )%>%
    pivot_longer(everything(),names_to="letters",values_to="values")%>%
    ggplot(aes(x=values,y=letters,fill=letters))+geom_density_ridges2()+
      scale_fill_munro(guide=NULL)+theme_ridges()+labs(y="",x="")
```

![munro palette](inst/pngs/munro.png)

### Core Range

6 colour palette based on the core range from 8 degrees brewing

``` r
colorblindr::gg_color_swatches(6)+scale_fill_core_range()

tibble(
  a=rnorm(100),b=rnorm(100,mean=1),c=rnorm(100,mean=2),
  d=rnorm(100),e=rnorm(100,mean=-1),f=rnorm(100,mean=-2)
  )%>%
    pivot_longer(everything(),names_to="letters",values_to="values")%>%
    ggplot(aes(x=values,y=letters,fill=letters))+geom_density_ridges2()+
      scale_fill_core_range(guide=NULL)+theme_ridges()+labs(y="",x="")
```

![core range palette](inst/pngs/core_range.png)

------------------------------------------------------------------------

**Unfortunately these palettes are not colourblind safe**<br> But if you
request two colours from either palette the returned pair is a
colourblind safe blue and orange.

![colorblind grid](inst/pngs/colorblind_grid.png)

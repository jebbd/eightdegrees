README
================

## Eight Degrees Brewing

[Eight Degrees Brewing](https://www.eightdegrees.ie/) are an Irish
brewery in Cork. I was inspired by the colour palette of their limited
edition, Munro series.

This is primarily an opportunity to create a colour palettes and learn
some R package development.

### Munro Series

8 colour paried paletted based on the limited edition Munro series

``` r
colorblindr::gg_color_swatches(8)+scale_fill_munro()->p1

tibble(
  a=rnorm(100),b=rnorm(100,mean=1),c=rnorm(100,mean=2),d=rnorm(100,mean=3),
  e=rnorm(100),f=rnorm(100,mean=-1),g=rnorm(100,mean=-2),h=rnorm(100,mean=-3)
  )%>%
    pivot_longer(everything(),names_to="letters",values_to="values")%>%
    ggplot(aes(x=values,y=letters,fill=letters))+geom_density_ridges2()+
      scale_fill_munro(guide=NULL)+theme_ridges()+labs(y="",x="")->p2

p1+p2
```

<img src="README_files/figure-gfm/unnamed-chunk-1-1.png" width="90%" style="display: block; margin: auto;" />

### Core Range

6 colour palette based on the core range from 8 degrees brewing

``` r
colorblindr::gg_color_swatches(6)+scale_fill_core_range()->p3

tibble(
  a=rnorm(100),b=rnorm(100,mean=1),c=rnorm(100,mean=2),
  d=rnorm(100),e=rnorm(100,mean=-1),f=rnorm(100,mean=-2)
  )%>%
    pivot_longer(everything(),names_to="letters",values_to="values")%>%
    ggplot(aes(x=values,y=letters,fill=letters))+geom_density_ridges2()+
      scale_fill_core_range(guide=NULL)+theme_ridges()+labs(y="",x="")->p4

p3+p4
```

<img src="README_files/figure-gfm/unnamed-chunk-2-1.png" width="90%" style="display: block; margin: auto;" />

-----

**Unfortunately these palettes are not colourblind safe**

<img src="README_files/figure-gfm/unnamed-chunk-3-1.png" width="90%" style="display: block; margin: auto;" />

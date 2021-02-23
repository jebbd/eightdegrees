library(ggplot2)

ggplot(iris,aes(x=Species,y=Sepal.Width,fill=Species))+
  geom_violin()+scale_fill_core_range()

ggplot(iris,aes(x=Sepal.Width,y=Sepal.Length,colour=Species))+
  geom_point()+scale_colour_munro()

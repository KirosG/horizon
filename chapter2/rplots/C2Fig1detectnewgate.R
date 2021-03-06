library(scales)
library(ggplot2)
library(dplyr)

this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
l <- read.csv('../plotdata/mungednewgatesensation.csv')
l$genre <- as.factor(l$realclass)

p <- ggplot(l, aes(x = dateused, y = logistic, color = genre, fill = genre,
                   shape = genre, size = genre)) + 
  geom_point(alpha = 0.75) + scale_shape_manual(name="actually\n", values = c(17,21,3,22)) + 
  scale_color_manual(name = "actually\n", values = c('black', 'black', 'black', 'black')) + 
  scale_fill_manual(name = 'actually\n', values = c('black', 'gray65', 'black', 'gray85')) +
  theme_bw() + theme(text = element_text(size = 16, family = 'Avenir Next Medium')) + 
  scale_size_manual(name = "actually\n", values = c(2,3,2,3)) +
  scale_y_continuous('probability', labels = percent, breaks = c(0.25,0.5,0.75)) + 
  scale_x_continuous("", breaks = c(1850,1900,1950,2000))
plot(p)

tiff("../images/C2Fig1detectnewgate.tiff", height = 6, width = 9, units = 'in', res=400)
plot(p)
dev.off()
plot(p)
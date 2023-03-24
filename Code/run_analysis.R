
library("dplyr")
library("texreg")
library("ggplot2")

if ("Linux" %in% Sys.info()[["sysname"]]) {
  setwd("/cluster/home/kahrens/met4fun")
} else {
  setwd("/Users/kahrens/MyProjects/met4fun")
}
data <- read.csv('Data/Lab3_data.csv')

summary(fit <- lm(Movies~Comedy_movies,data=data))

texreg(fit,file="Output/regression_table.tex")

ggplot(data) +
  geom_histogram(aes(Movies))
ggsave(filename="Output/histogram.png")
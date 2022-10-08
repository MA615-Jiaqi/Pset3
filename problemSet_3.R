myName <- "Jiaqi Sun"

library(tidyverse)
library(magrittr)

iris.vers = subset(iris, Species == "versicolor")
ans_1 = iris.vers

sepal.dif <- iris.vers$Sepal.Length - iris.vers$Sepal.Width
ans_2 = sepal.dif

iris.vers <- data.frame(iris.vers, sepal.dif)
ans_3 = iris.vers

x <- sapply(mtcars, class)
ans_4 = x

mtcars %>%
  mutate(am = as.integer(am),
         cyl = as.integer(cyl),
         vs = as.integer(vs)) -> newmtc
sapply(newmtc, class) -> x
ans_5 = x

round(newmtc, 1) -> newmtc
ans_6 = newmtc


iris %>% 
  filter(Species == "virginica") %>%
  filter(Sepal.Width > 3.5) -> iris_7
ans_7 = iris_7


iris_8 <- iris[iris$Species == "virginica" & iris$Sepal.Width > 3.5, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]
ans_8 = iris_8

row.names(iris[iris$Species == "virginica" & iris$Sepal.Width > 3.5,]) -> r_id
ans_9 = r_id

sum(diamonds$cut == "Ideal" & diamonds$carat < 0.21) ->  diam_10
ans_10 = diam_10

sum ((diamonds$x + diamonds$y + diamonds$z) > 40) -> diam_11
ans_11 = diam_11


sum(diamonds$price > 10000 | diamonds$depth >= 70) ->  diam_12
ans_12 = diam_12

diamonds %>% 
  slice(67, 982) %>% 
  select(color, y) -> diam_13
ans_13 = diam_13


diamonds %>% 
  slice(453, 792, 10489) -> diam_14
ans_14 = diam_14


diam_15 <- diamonds %>% 
  head(10) %>% 
  select(x,y,z)
ans_15 = diam_15


diamonds %>% 
  head(1000) -> newdiam
ans_16 = newdiam

newdiam %>% 
  arrange(price) -> newdiam_17
ans_17 = newdiam_17

set.seed(56)
diamonds %>% 
  sample_n(750) -> diam750
ans_18 = diam750

summary(diam750) -> sum_diam750
ans_19 = sum_diam750



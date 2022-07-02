getwd()
setwd("/Users/imingyu/hello")
source("hello.R")
getwd()
setwd("..")
getwd()
setwd("/Users/imingyu/hello")
source("hello.r")


a <- getwd()

save.image()

ls()

x <- 100
y <- c(2,3,5,7)
f <- function(y) (y-32)/1.8
hero <- c("superman", "batman","spiderman")
ls()
ls.str()

z <- 3.14
z
rm(z)
z


rm(x,y)
ls()


rm(list =ls())
ls()



hero <- c("superman", "batman","spiderman")
hero
save(hero,file = "hero.rda")

load("hero.rda")
hero

history()











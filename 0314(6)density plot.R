density() #확률 밀도값
plot()

str(iris)
ds <- density(iris$Sepal.Width)
plot(ds)

ds <- density(iris$Sepal.Width)
plot(ds, main = "Density of Sepal widtg")

#경계선과 내부의 색상
polygon(ds, col = "tomato", border = "blue")

rug(iris$Sepal.Width, col = "brown")


#집단별 분포모양/ 집단간 겹치는 정도
install.packages("sm")
library(sm)

?sm

#데이터 셋 자체를 메모리 적재
attach(iris)

sm.density.compare(x = Sepal.Width, group = Species, xlab = "Sepal width(cm)",)
title(main = "distribution of sepal width by iris species")
#범례추가(우상단)
legend("topright", legend = levels(Species),
       lty = c("solid", "dashed", "dotted"),
       col = c("red", "green3", "blue"))






str(iris)
#방법1
plot(iris$Petal.Length, iris$Petal.Width)
#방법2(with방식)
with(iris, plot(Petal.Length,Petal.Width))
#방법3(포뮬러방식)
#순서 중요
plot(Petal.Width ~ Petal.Length, data = iris) 



#150개의 값이 심볼로 표현된다
#방법1
with(iris, plot(Petal.Length,Petal.Width,
                pch = as.integer(Species)))
#각 심볼을 정수로 표현
as.integer(iris$Species) 
?points

#각 심볼의 의미를 담은 범례 추가
levels(iris$Species) #꽃 종류 검색
legend(x = 1.2, y = 2.4,
       legend = c("setosa", "versicolor", "virginica"),
       pch = 1:3)



#방법2
with(iris, plot(Petal.Length,Petal.Width,
                pch = as.integer(Species)))
legend(x = 1.2, y = 2.4,
       legend = as.character(levels(iris$Species)),
       pch = 1:length(levels(iris$Species))


#방법3
#locator(1): 마우스 클릭으로 원하는 곳에 위치 가능
with(iris, plot(Petal.Length,Petal.Width,
                pch = as.integer(Species)))

legend(locator(1),
       legend = as.character(levels(iris$Species)),
       pch = 1:length(levels(iris$Species)))

       
       
with(iris, plot(Petal.Length, Petal.Width,
                pch = as.integer(Species),
                col = as.integer(Species)))
legend(x = 1.2, y = 2.4,
      legend = as.character(levels(iris$Species)),
      pch = 1:length(levels(iris$Species)),
      col = 1:length(levels(iris$Species)))




with(iris, plot(Petal.Length, Petal.Width,
                pch = 19,
                col = as.integer(Species) + 1))

#채워져 있는 심볼의 색상은 col이 아니라 fill을 사용한다
legend(x = 1.1, y = 2.5,
       legend = as.character(levels(iris$Species)),
       fill = (1:length(levels(iris$Species))) + 1)







str(mtcars)
install.packages("car")
library(car)
#scatterplot(y축에 나타날 변수  ~ x축에 나타날 변수)
#boxplots=xy (xy축의 상자도표)
scatterplot(mpg ~ wt | cyl, data = mtcars,
            boxplots = "xy", lwd = 2,
            pch = c(15, 16, 17),
            col = c("red", "green3", "blue"))
       
       
       
       
              







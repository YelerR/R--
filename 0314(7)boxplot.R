boxplot()

str(iris)
boxplot(iris$Sepal.Width, ylab= "Sepal width(cm)",
        main = "Sepal sidth of iris")



whisker, box-and-whisker plot

#상자도표에 담겨있는 정보가 리스트로 출력된다
#stats: 포함된 값
#n: 표본의 개수
#conf: 중위수의 95% 신뢰구간
#out: 이상점
boxplot.stats(iris$Sepal.Width)

#boxplot(분포를 그릴 숫자 ~ 집단을 나타내는 범주형)
boxplot(Sepal.Width ~ Species, data = iris,
        ylab = "Sepal width(cm)",
        main = "Sepal width of iris Sepcies")


?boxplot

#notch : 중위구간을 중심으로 95% 신뢰구간 표시
#las : 축 눈금의 텍스트가 표시되는 방향
boxplot(Sepal.Width ~ Species, data = iris,
        notch = TRUE, col = c("blue", "plum", "coral") ,
        border = "red", las = 1,
        ylab = "Sepal width(cm)",
        main = "Sepal width of iris Sepcies")


boxplot(Sepal.Width ~ Species, data = iris,
        notch = TRUE, 
        col = c("blue", "plum", "coral") ,
        border = "red", las = 1,
        ylab = "Sepal width(cm)",
        xlab = "", #공백을 주면 이름을 지울 수 있다
        names = c("Setosa", "Versicolor", "Vurginica") #변수명 변경,
        main = "Sepal width of iris Sepcies")




#x축과 y축 변경(horizontal) ->이름명도 변경해줘야한다
boxplot(Sepal.Width ~ Species, data = iris,
        notch = TRUE, horizontal = TRUE, 
        col = c("blue", "plum", "coral") ,
        border = "red", las = 1,
        ylab =  "", #공백을 주면 이름을 지울 수 있다
        xlab = "Sepal width(cm)",
        names = c("Setosa", "Versicolor", "Vurginica") , #변수명 변경
        main = "Sepal width of iris Sepcies")



#집단을 구분하는 변수 2개 이상일 때
str(mtcars)
#벡터로변환
mtcars$cyl.factor <- factor(mtcars$cyl,
                            levels = c(4, 6, 8),
                            labels = c("4", "6", "8"))


mtcars$am.factor <- factor(mtcars$am,
                            levels = c(0, 1),
                            labels = c("auto", "manual"))

boxplot(mpg ~ am.factor * cyl.factor,
        data = mtcars)



boxplot(mpg ~ am.factor * cyl.factor,
        data = mtcars, col = c("red", "blue", "yellow",
                               "green", "chocolate", "darkorchid" ),
        las = 1, xlab = "Car Type", ylab = "Milers per Gallon",
        main = "Car Mileage by Type")


#varwidth = TRUE 상자의 폭이 조정된다
boxplot(mpg ~ am.factor * cyl.factor,
        data = mtcars, col = c("red", "blue", "yellow",
                               "green", "chocolate", "darkorchid" ),
        varwidth = TRUE,
        las = 1, xlab = "Car Type", ylab = "Milers per Gallon",
        main = "Car Mileage by Type")


#각 상자의 위치를 벡터로 지정이 가능하다
boxplot(mpg ~ am.factor * cyl.factor,
        data = mtcars, col = c("red", "blue", "yellow",
                               "green", "chocolate", "darkorchid" ),
        varwidth = TRUE, at = c(1, 2, 3.5, 4.5, 6, 7),
        las = 1, xlab = "Car Type", ylab = "Milers per Gallon",
        main = "Car Mileage by Type")
windows(width = 12, height = 8)






















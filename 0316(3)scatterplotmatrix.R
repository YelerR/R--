str(iris)
plot(iris[1:2])


#같은 결과
plot(iris[1:4])
pairs(iris[1:4])
pairs( ~ Sepal.width + Sepal.Length, 
         Petal.Length + Petal.width,
       data = iris)


#아래쪽 6개의 산점도 행렬 출력
pairs( ~ Sepal.Length +  Sepal.Width + 
       Petal.Length + Petal.Width,
       data = iris, upper.panel = NULL)


install.packages("psych")
library(psych)
pairs.panels(iris[1:4])


#추가로 인수를 지정해서 iris 꽃에 종류에 색상별로 구분되는 산점도
pairs.panels(iris[1:4], pch = 21,
             bg = c("red", "green", "blue")[iris$Species])

#산점도 상의 직선의 회계선
pairs.panels(iris[1:4], pch = 21,
             bg = c("red", "green", "blue")[iris$Species],
             lm = TRUE)


#심볼의 모양으로 집단을 구분
as.numeric(iris$Species)#정수로 변환
pairs.panels(iris[1:4], pch = 21 + as.numeric(iris$Species),
             bg = c("red", "green", "blue")[iris$Species])


#히스토그램 색상 변경
as.numeric(iris$Species)#정수로 변환
pairs.panels(iris[1:4], pch = 21 + as.numeric(iris$Species),
             bg = c("red", "green", "blue")[iris$Species],
             hist.col = "gold")




#상관계수의 통계적 유의성 확인
#"PerformanceAnalytics"에 포함되어있는 chart.Correlation사용
install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
chart.Correlation(iris[1:4], pch = 21,
                  bg = c("red", "green", "blue")[iris$Species])

























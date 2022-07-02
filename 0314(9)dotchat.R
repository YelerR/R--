#########점도표#########


###숫자에 의해서 점도표 생성###

#개별 데이터값 하나하나를 수평선 위에 점으로 나타내는 일차원 산점도 
str(mtcars)
head(mtcars)


#자동차 이름은 행으로 저장돼있다
#수평선 자동차 개수
#동그라미 각 모델별 연비
dotchart(mtcars$mpg)
dotchart(mtcars$mpg, labels = row.names(mtcars))

#cex : 레이블의 크기
dotchart(mtcars$mpg, labels = row.names(mtcars), cex = 0.7,
         xlab = "Miles per Gallon",
         main = "Mileage for Car Model")


#order함수 : 주어진 변수값을 이용해서 오름차순
cars <- mtcars[order(mtcars$mpg),]
cars


cars$cyl.f <- factor(cars$cyl, levels = c(4, 6, 8),
                     labels = c("4 cylinders",
                                "6 cylinders",
                                "8 cylinders"))


#groups : 실린더 개수별로 범주화된 점도표를 그릴 때
#gcolor : 범주 색상
dotchart(cars$mpg, labels = row.names(cars), cex = 0.7,
         groups = cars$cyl.f, gcolor = "dimgray",
         xlab = "Miles per Gallon",
         main = "Mileage for Car Model")




#각 데이터 점이 실린더 개수에 따라서 서로다른 색상으로 표현

cars$colors[cars$cyl.f == "4 cylinders"] <- "maroon"
cars$colors[cars$cyl.f == "6 cylinders"] <- "deepskyblue"
cars$colors[cars$cyl.f == "8 cylinders"] <- "darkgreen"

dotchart(cars$mpg, labels = row.names(cars), cex = 0.7,
         groups = cars$cyl.f, gcolor = "dimgray",
         color = cars$colors, pch = 19,
         xlab = "Miles per Gallon",
         main = "Mileage for Car Model")



###도트차트에 행렬 셋이 인수로 주어질 때는
###각 열을 주어지는 열의 개수만큼 점도표가 하나의 그래프상에
###나란히 생성이 된다


VADeaths
str(VADeaths)
#4개의 인구 집단의 사망률  
dotchart(VADeaths, cex = 0.8)

#연령대를 범주로 인구집단 사망률
dotchart(t(VADeaths), cex = 0.8)
















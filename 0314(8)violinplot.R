vioplot()

str(mtcars)
install.packages("vioplot")
library(vioplot)

#vioplot(분포를 표현 할 연속등변수 ~ 범주변수)
vioplot(mpg ~ cyl, data = mtcars)



#상자 가운데 점은 중위수를 의미
#상자의 길이는 사분위 범위를 나타낸다 
#상자 상단과 하단으로부터 뻗어나온 끝은 상자길이 1.5배 범위 내의 최대/최소 값


#colMed : 중위수를 나타내는 점의 색상을 표현
vioplot(mpg ~ cyl, data = mtcars,
        col = "gold", border = "red", colMed = "green")



#names를 이용해서 범주 값을 변경
vioplot(mpg ~ cyl, data = mtcars,
        col = "gold", border = "red", colMed = "green",
        names = c("4-cylinder", "6-cylinder", "8-cylinder" ))


#제목
vioplot(mpg ~ cyl, data = mtcars,
        col = "gold", border = "red", colMed = "green",
        names = c("4-cylinder", "6-cylinder", "8-cylinder" ),
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        main = "Car Mileage by Cylinder", las = 1)


#mpg데이터 저장
c4 <- mtcars$mpg[mtcars$cyl == 4]
c6 <- mtcars$mpg[mtcars$cyl == 6]
c8 <- mtcars$mpg[mtcars$cyl == 8]

#위 그래프와 동일하다
vioplot(c4, c6, c8,
        col = "gold", border = "red", colMed = "green",
        names = c("4-cylinder", "6-cylinder", "8-cylinder" ),
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        main = "Car Mileage by Cylinder", las = 1)


#기존 그래프와 겹쳐서 그릴 수 있다(기존 그래프에 추가)
x <- mtcars$wt #자동차 무게
y <- mtcars$mpg #자동차 연비
# ann = FALSE 제목 나타나지 않게 해줌
plot(x, y, pch = 20, col = "darkblue", ann = FALSE)



max(x); max(y)
#y축과 평행하게 연비의 분포를 나타낸 그래프
#xlime :x의 범위 / ylime : y의 범위
plot(x, y, xlim = c(0,6), ylim = c(0,36),
     pch = 20, col = "darkblue", ann = FALSE)

#rectCol : 상자도표 내부색상
#add = TRUE : 기존 그래프에 다른 그래프 추가
vioplot(y, col = "lightblue", rectCol = "gray", lty = 2, add = TRUE)


#x축과 평행한 무게의 분포 그래프
#wex :기본값 1 / 바이오플롯 크기를 조정 가능(상대적 크기)
#x축에 너무 붙어있기 때문에 at함수를 이용해서 간격 조정 가능 
#at함수는 y축 기준으로 조정 가능하다
vioplot(x, col = "red", rectCol = "gold",
        lty = 2, add = TRUE, horizontal = TRUE,
        wex = 6, at= 4)
title("Car Mieage vs Car wrigth",
      xlab = "weight (1,000lbs)",
      ylab = "Miles per Gallon")






















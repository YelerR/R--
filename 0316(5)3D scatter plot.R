#3차원 산점도
str(mtcars)
install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(mtcars$wt, mtcars$disp, mtcars$mpg,
              xlab = "weight", ylab = "Displacement" ,
              zlab =  "Milers per Gallon",)


#type = "h" 각 점과 평면을 연결하는 수직선
#highlight.3d = TRUE 깊이를 색상의 차이로 나타낼 수 있다
scatterplot3d(mtcars$wt, mtcars$disp, mtcars$mpg,
              pch = 19, type = "h", highlight.3d = TRUE,
              xlab = "weight", ylab = "Displacement" ,
              zlab =  "Milers per Gallon",)


#희기평면
sp3d <- scatterplot3d(mtcars$wt, mtcars$disp, mtcars$mpg,
              pch = 19, type = "h", highlight.3d = TRUE,
              xlab = "weight", ylab = "Displacement" ,
              zlab =  "Milers per Gallon",)
#lm(종속변수 ~  독립변수)
reg <- lm(mpg ~ wt + disp, data = mtcars)
sp3d$plane3d(reg)

#산점도 상의 평면은 예측된 값을 나타내고
#점은 실제 관측값을 나타낸다
#점부터 평면까지의 거리는 잔차를 나타낸다
#평면위의 점들은 관측값보다 예측값이 큰 경우이고 
#반대로 평면 아래의 점들은 관측값이 예측값보다 작은 경우이다

#막대도표의 막대는 특정 값의 대응되는 빈도를 나타냄
#히스토그램의 막대는 값들의 범위의 빈도를 나타냄


hist()
str(iris)

hist(iris$Sepal.Width)
?hist

#개수만큼의 구간(보장되지는 않았지만 근접하다)
hist(iris$Sepal.Width, breaks = 20)

#벡터형태로도 가능
#2.0부터 4.4까지 0.2의 간격으로 출력
hist(iris$Sepal.Width, breaks = seq(2.0, 4.4, 0.2))


#레이블 인수에 트루를 지정하면은 막대높이의 값이 막대 상단에 출력
hist(iris$Sepal.Width, breaks = seq(2.0, 4.4, 0.2),
     labels = TRUE)


#현재 그래프는 막대가 빈도로 표현
#density 막대를 채우는 사선의 밀도
#angle 막대 사선의 각도
hist(iris$Sepal.Width, breaks = seq(2.0, 4.4, 0.2),
     labels = TRUE, density =15 , angle = 135,
     xlim = c(2, 4.5), ylim = c(0, 40), #데이터범위
     xlab = "Sepal.width")



#상대적 빈도 (비율)
#확률밀도를 나타낸다 (모두 더하면 1)
hist(iris$Sepal.Width, breaks = seq(2.0, 4.4, 0.2), prob = TRUE,
     col = "gold", border = "hotpink",
     xlim = c(2, 4.5), ylim = c(0, 1.5), #데이터범위
     xlab = "Sepal.width")



#밀도곡선
hist(iris$Sepal.Width, breaks = seq(2.0, 4.4, 0.2), prob = TRUE,
     col = "gold", border = "hotpink",
     xlim = c(2, 4.5), ylim = c(0, 1.5), #데이터범위
     xlab = "Sepal.width")

density(iris$Sepal.Width)
lines(density(iris$Sepal.Width), col = "violet", lwd = 2)


 

#rug도표 (백분위수)
quantile(iris$Sepal.Width) #백분위
rug(quantile(iris$Sepal.Width), col = "red", lwd = 3)
 


#정규분포곡선 (x값과 y값이 필요하다)
hist(iris$Sepal.Width, breaks = seq(2.0, 4.4, 0.2), prob = TRUE,
     col = "gold", border = "hotpink",
     xlim = c(2, 4.5), ylim = c(0, 1.5), #데이터범위
     xlab = "Sepal.width")


#seq를 이용해서 min과 max를 구함 , 40등분(x값 40개 사용)
x <- seq(min(iris$Sepal.Width), max(iris$Sepal.Width), length = 40)
y <- dnorm(x, mean = mean(iris$Sepal.Width), sd = sd(iris$Sepal.Width))
lines(x, y, col = "chocolate", lwd= 2)
box()



















##그래프 배치 및 저장
#여러개의 그래프를 생성했을 때 하나의 창에 그래프를 배치 및
#별도의 파일로 저장하는 방법

library(ggplot2)
library(car)
str(Salaries)

#사람수 몇 명인지 보여주는 막대 그래프
p1 <- ggplot(Salaries, aes(x = rank)) +
  geom_bar(fill = "steelblue")

#연봉의 히스토그램 그래프
p2 <- ggplot(Salaries, aes(x = salary)) +
  geom_histogram(fill = "maroon")

#박사학위 취득 경과시간/ 연봉과의 관계 산점도 
p3 <- ggplot(Salaries, aes(x = yrs.since.phd, y = salary)) +
  geom_point(color = "orange")

#직급별 연봉 분포 박스그래프
p4 <- ggplot(Salaries, aes(x = rank, y = salary)) +
  geom_boxplot(fill = "mistyrose")




#생성한 그래프 파일로 저장

install.packages("gridExtra")
library(gridExtra)
grid.arrange(p1, p2, p3, p4, nrow = 2, ncol = 2)


#width = 7.0, height = 5.5 기본 단위는 인치(units 단위 변환)
myggplot<- grid.arrange(p1, p2, p3, p4, nrow = 2, ncol = 2)
ggsave(file = "myplot.png", plot = myggplot,
       width = 7.0, height = 5.5)




ggplot(Salaries, aes(x= rank, y = salary)) +
  geom_boxplot()
ggsave(file="myplot2.png")








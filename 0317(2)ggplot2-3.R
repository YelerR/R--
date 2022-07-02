library(ggplot2)
library(car)
str(Salaries)

#직급별로 다른 색으로 채워진다
ggplot(Salaries, aes(x = salary, fill = rank)) +
  geom_density(alpha = 0.5)


#박사학위 취득이후 기간과 연봉 간의 산점도
#color = rank :직급에 따라서 색을 다르게 해달라는 의미
#shpae = sex :성별에 따라서 다른 도형을 사용해달라는 의미
ggplot(Salaries, aes(x = yrs.since.phd, y = salary,
                     color = rank, shape = sex)) +
  geom_point()


#하나의 그래프 상에 두개의 집단 도표
#fill = sex :성별에 따라서 막대기를 채워달라는 의미

#기본 stack 생성
ggplot(Salaries, aes(x = rank, fill = sex)) +
  geom_bar(position = "stack")

#수평으로 배열
ggplot(Salaries, aes(x = rank, fill = sex)) +
  geom_bar(position = "dodge")

#백분율에 척도되는 비율 
ggplot(Salaries, aes(x = rank, fill = sex)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion")





?geom_bar
#stat에 기본값으로 "count"가 들어가 있다
#(자동으로 데이터 셋에서 개수를 세서 높이를 결정)
#but 지금처럼 높이가 정해져 있을 때는 count 대신에 identity를 사용

presummed <- data.frame(Grade = c("A", "B", "C", "D", "F"),
                        Frequency = c(20, 45, 20, 10, 5))
presummed
ggplot(presummed, aes(x = Grade, y = Frequency)) +
  geom_bar(stat = "identity")


#default로 stat = "identity" 그래프를 만들어주기 때문에
#별도로 인수를 지정 안해줘도 된다.
ggplot(presummed, aes(x = Grade, y = Frequency)) +
  geom_col()










#facet_wrap( ~ 집단사용할 변수,행(열)의개수) 
#한쪽에만 집단사용할 변수를 입력하면
#한열에 수평으로 배치되는 그래프가 된다


library(lattice)
head(singer)


#8명 각각의 그래프
ggplot(singer, aes(x = height)) +
  geom_histogram() +
  facet_wrap( ~ voice.part, nrow = 4)




#facet_grid()
#facet_grid(voice.part ~ .) 한쪽에 생략을 할 때는 .을 찍어줘야한다
#밀도도표
ggplot(singer, aes(x = height, fill = voice.part)) +
  geom_density() +
  facet_grid(voice.part ~ .)



#집단별 그래프
#패널을 만들어서 각각 다른 패널상에서 직급별, 성별에 따른 산점도
ggplot(Salaries, aes(x = yrs.since.phd, y = salary)) +
  geom_point() +
  facet_grid(sex ~ rank)





#한쪽만 하나의 범주형 변수는 행또는 열에 배치를 하고
#나머지 범주형 변수는 색깔이나 모양으로 정보를 표현
#facet_grid( ~ sex)

#하나의 열의 방향으로 성별을 배치하고(직급에 대한 구분을 할 수 가없다)
#직급에 대한 구분은 aes에서 색깔과 모양을 가져온다.
ggplot(Salaries, aes(x = yrs.since.phd, y = salary,
                     color = rank, shape = rank)) +
  geom_point() +
  facet_grid( ~ sex)


















































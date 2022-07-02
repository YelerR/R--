library(ggplot2)
library(car)
str(Salaries)

#rank :직급
#salary 연봉
#박스 색을 sex에 따라서 설정
ggplot(Salaries, aes(x = rank, y = salary, fill = sex)) +
  geom_boxplot()



#####스케일함수#####
#위치, 색상, 채우기, 크기, 도형 등의 그래프 요소에 대한 변경
#scale_<aesthetic(인수)>_<name/data type>    ex)
#      x,y                 continuous        scale_y_continuous()
#      color               discrete          scale_x_date()
#      fill                date              scale_shape_discrete()
#      size                manual            scale_fill_manual()
#      shape...            brewer...         scale_color_brewer()
      
      

#breaks 축의 눈금을 나타내는 펙터의 레벨을 문자벡터로 지정
#labels 눈금이름에 사용할 텍스트레이블을 문자 벡터로 지정

#x축과 y축을 내용 변경할 때 사용 가능하다
scale_x_discrete()
scale_x_continuous()
scale_y_discrete()
scale_y_continuous()
      

#이산변수(discrete variable)란 이산 할 수 있는 변수를 의미 합니다. 
#이게 뭔 소린가 싶지만 다시 말하자면
#하나하나 셀 수 있는 변수를 의미합니다.
#예를 들어 아파트의 층 수, 한 회사의 직원의 수,
#불량품의 개수 등이 이산변수 입니다.
#한 회사의 직원 수가 100.5 명은 될 수 없잖아요.

#연속변수(continuous variable)란 이산변수와 다르게
#변수의 각 값 사이에 무수히 많은 또 다른 값들이 존재하는 경우를 의미합니다.
#예를 들어 사람의 키, 몸무게, 나이, 한 가구의 소득 등이 그것 입니다.

#이산변수와 연속변수의 차이는 정수와 실수의 차이 정도로 생각하면 되겠네요.







#범례 제목 변경 
#방법 1

ggplot(Salaries, aes(x = rank, y = salary, fill = sex)) +
  geom_boxplot() +
  scale_x_discrete(breaks = c("AsstProf", "AssocProf", "Prof"),
                 labels = c("Assistant \n Professor",
                            "Associate \n Professor",
                            "Professor")) +
  scale_y_continuous(breaks = c(50000, 100000, 150000, 200000),
                     labels = c("50$k", "100$k", "150$k", "200$k"))+
  labs(fill = "Gender")  #범례 제목 변경




#범례 제목 변경
#방법 2

#scale_fill_discrete() aes함수에서 sex란 범례를 나타내는 범주형 변수가
#fill로 맵핑이 돼있기 때문에 그와 동일안 scale_fill_discrete()를 사용

#만약에 aes(fill = sex)자리에 color이면 scale_color_discrete()
#shape이면 scale_shape_discrete()
ggplot(Salaries, aes(x = rank, y = salary, fill = sex)) +
  geom_boxplot() +
  scale_x_discrete(breaks = c("AsstProf", "AssocProf", "Prof"),
                   labels = c("Assistant \n Professor",
                              "Associate \n Professor",
                              "Professor")) +
  scale_y_continuous(breaks = c(50000, 100000, 150000, 200000),
                     labels = c("50$k", "100$k", "150$k", "200$k"))+
  scale_fill_discrete(name = "Genderaa") #범례 제목 변경




#범례 위치 변경 
#방법 1
#theme(legend.position =  "top") / right, left, bottom /none
ggplot(Salaries, aes(x = rank, y = salary, fill = sex)) +
  geom_boxplot() +
  scale_x_discrete(breaks = c("AsstProf", "AssocProf", "Prof"),
                   labels = c("Assistant \n Professor",
                              "Associate \n Professor",
                              "Professor")) +
  scale_y_continuous(breaks = c(50000, 100000, 150000, 200000),
                     labels = c("50$k", "100$k", "150$k", "200$k"))+
  scale_fill_discrete(name = "Genderaa") +
  theme(legend.position =  "top")



#좌표로 범례 위치 변경
ggplot(Salaries, aes(x = rank, y = salary, fill = sex)) +
  geom_boxplot() +
  scale_x_discrete(breaks = c("AsstProf", "AssocProf", "Prof"),
                   labels = c("Assistant \n Professor",
                              "Associate \n Professor",
                              "Professor")) +
  scale_y_continuous(breaks = c(50000, 100000, 150000, 200000),
                     labels = c("50$k", "100$k", "150$k", "200$k"))+
  scale_fill_discrete(name = "Genderaa") +
  theme(legend.position = c(0.15, 0.85))




data(mtcars)
head(mtcars)
#실린더 개수별로 모양과 색깔 다르게 표현
#cyl은 범주형 변수가 아니기 대문에 펙터로 변경 후 사용해야한다
ggplot(mtcars, aes(x = wt, y = mpg,
                   color = factor(cyl), shape = factor(cyl))) +
  geom_point()  +
  labs(shpae = "Cylinder", color = "Cylinder")


ggplot(mtcars, aes(x = wt, y = mpg,
                   color = factor(cyl), shape = factor(cyl))) +
  geom_point()  +
  scale_shape_discrete(name = "Cylinder") +
  scale_color_discrete(name = "Cylinder")





#엔진 배기량이 커지면 점도 커지고 작아지면 점도 작아지는 산점도
#size = disp(배기량) 
head(mtcars)
#wt : 무게
#mpg : 갤런당 마일
#disp : 배기량
ggplot(mtcars, aes(x = wt, y  = mpg, size = disp)) +
  geom_point(shape = 21, color = "black", fill = "wheat") +
  labs(size = "Engine\nDisplacement")


#continuous 함수이기 때문에 scale_size_continuous 사용
ggplot(mtcars, aes(x = wt, y  = mpg, size = disp)) +
  geom_point(shape = 21, color = "black", fill = "wheat") +
  scale_size_continuous(name = "Engine\nDisplacement")





#직급별 사람수가 몇 명인지 구분하는 막대도표 생성
#성별에 따라서도 몇 명인지 구분
ggplot(Salaries, aes(x = rank, fill = sex)) +
  geom_bar()


#색 지정
#막대도표의 색을 맘대로 지정하는 것이기 때문에 manual 사용
ggplot(Salaries, aes(x = rank, fill = sex)) +
  geom_bar() +
  scale_fill_manual(values = c("tomato", "cornflowerblue"))





head(Salaries)
#기본적 옵션 산점도
ggplot(Salaries, aes(x = yrs.since.phd, y = salary, 
                     color = rank)) +
  geom_point(size = 2) 

#산점도의 점을 색상을 변경
ggplot(Salaries, aes(x = yrs.since.phd, y = salary, 
                     color = rank)) +
  geom_point(size = 2) + 
  scale_color_manual(values = c("orange", "violetred", "steelblue"))




#scale_shape_manual(values = c(15, 17, 19))
#shape = rank 랭크에 따라서 모양으로 출력
#동그라미, 세모, 네모 역순으로 출력
ggplot(Salaries, aes(x = yrs.since.phd, y = salary, 
                     color = rank, shape = rank)) +
  scale_shape_manual(values = c(15, 17, 19)) +
  geom_point(size = 2)




ggplot(Salaries, aes(x = yrs.since.phd, y = salary, 
                     color = rank)) +
  geom_point(size = 2) +
  scale_color_brewer(palette = "Set1") +
  scale_color_discrete(name = "Rank")




#그라데이션
ggplot(mtcars, aes(x= wt, y = mpg, color = disp)) +
  geom_point() + 
  scale_color_gradient2()

?RColorBrewer
#Accent	
#Dark2	
#Paired	
#Pastel1	
#Pastel2	
#Set1
#Set2
#Set3


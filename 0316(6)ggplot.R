#ggplot2그래픽
#저수준의 그리드 그래픽 시스템을 기반으로 다양한 고수준 그래픽 구현
#그래프 문법 구조를 바탕으로 통일된 규칙에 따라 일관된 방식으로그래프를 생성

install.packages("ggplot2")
library(ggplot2)

#ggplot(data = mtcars, aes(x = wt, y = mpg)) :그래프 초기화/
                                          #데이터 셋 및 변수의 역활 설정
#aes(x = wt, y = mpg): 데이터와 그래프의 시각적 요소 간의 대응 관계 설정
#labs: 제목, 캡션, 축이름 등의 그래프 부가요소
#geom_point():그래프의 시각적 결과물인 geom함수
ggplot(data = mtcars, aes(x = wt, y = mpg)) +  
  geom_point() +
  labs(x = "weight (1,000 lbs)", y = "Fuel Consumption(miles per gallon)",
       title = "Fuel Consumption vs. weight",
       subtitle = "Negative relationship between
       fuel efficiency and car weight",
       caption = "Source : mpg dataset")


#위 그래프에 추세선 추가
ggplot(data = mtcars, aes(x = wt, y = mpg)) +  
  geom_point() +
  geom_smooth() +
  labs(x = "weight (1,000 lbs)", y = "Fuel Consumption(miles per gallon)",
       title = "Fuel Consumption vs. weight",
       subtitle = "Negative relationship between
       fuel efficiency and car weight",
       caption = "Source : mpg dataset")









str(mtcars)
#ggplot histogram
ggplot(data = mtcars, aes(x = mpg)) +
  geom_histogram() +
  facet_grid(cyl ~ .) + #패널에 그리는 함수
  labs(title = "geom_boxplot()", x = "Miles per Gallon")


#ggplot boxplot
ggplot(data = mtcars, aes(x = cyl, y = mpg)) +
  geom_boxplot() +
  labs(title = "geom_boxplot()",
       x = "Number of Cylinders",
       y = "Miles per Gallon")



#ggplot density
ggplot(data = mtcars, aes(x = mpg, fill = cyl)) +
  geom_density() +
  labs(title = "geom_density()", x = "Miles per Gallon")



#ggplot point
ggplot(data = mtcars, aes(x = wt, y = mpg, col = cyl )) +
  geom_point() + 
  labs(title = "geom_point()",
       x = "weight(1,000 lbs)", y = "Miles per Gallon")




#ggplot smooth
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_smooth() +
  labs(title = "geom_smooth()",
       x = "weight(1,000 lbs)", y = "Miles per Gallon")



#ggplot line
ggplot(data = economics, aes(x = date, y = unemploy)) +
  geom_line() +
  labs(title = "geom_line()",
       x = "Year", y = "Number of Unemployed(thousands)")













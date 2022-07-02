library(ggplot2)
head(mtcars)
#shape 심볼 모양 변경 = pch와 동일
ggplot(data = mtcars, aes(x = wt, y = mpg),) +  
  #x와 y는 위에 지정되어 있기 때문에 승계받아서 사용
  geom_point(shape = 21, col = "gold", size = 6 ,
             bg = "red", stroke = 2) +
  geom_smooth(method = "lm", col = "black",
              linetype = 5 , size = 3) +
  labs(title = "Fuel Consumption vs. weight",
       x = "weight (1,000 lbs)",
       y = "Fuel Consumption(miles per gallon)")

#######<geom_point>#######
#심볼 설정 가능
?geom_point

?par #심볼 무엇인지 확인 가능(?pch)
#21번 부터는 심볼 안에 색상 넣기 가능
colors() #총 657개의 사용할 수 있는 색상 확인 가능
#색상은 http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf 확인가능
stroke #심볼 테두리 두께 조절 가능


#######<geom_smooth>#######
#적합선 설정 가능
?geom_smooth 

linetype = lty
lm() #선형 회계선
glm() 
gam()
loess()


######geom_text()######
?geom_text
#자동차 모델명 입력 가능
rownames(mtcars)


library(ggplot2)
head(mtcars)
#shape 심볼 모양 변경 = pch와 동일
#hjust 심볼 기준 0 오른쪽 1 왼쪽
#vjust 심볼 기준0위쪽 1아래쪽글의 위치 조정
#nudge_x 추가적으로 미세하게 조정 가능
##nudge_y
ggplot(data = mtcars, aes(x = wt, y = mpg),) +  
  #x와 y는 위에 지정되어 있기 때문에 승계받아서 사용
  geom_point(shape = 21, col = "gold", size = 6 ,
             bg = "red", stroke = 2) +
  geom_smooth(method = "lm", col = "black",
              linetype = 5 , size = 3) +
  geom_text(label = rownames(mtcars), hjust = 0, vjust = 0,
            nudge_x = 0.7, size = 2.5)
  labs(title = "Fuel Consumption vs. weight",
       x = "weight (1,000 lbs)",
       y = "Fuel Consumption(miles per gallon)")





library(car)
str(Salaries)
#colour : 테두리 색상
#fill : 상자의 내부 색상
#notch = TRUE 중위수의 95% 신뢰구간을 표현(겹치는지 확인 가능)
ggplot(Salaries, aes(x = rank, y = salary)) +
  geom_boxplot(fill = "salmon", color = "red",
               notch = TRUE) +
  geom_point(position = "jitter", color = "royalblue", alpha = 0.5) +
  geom_rug(sides = "l", color = "dimgray")


?geom_boxplot

#colour : 테두리 색상
#fill : 상자의 내부 색상
#notch = TRUE 중위수의 95% 신뢰구간을 표현(겹치는지 확인 가능)

?geom_point

#position = "jitter" : 관측값들이 겹치지 않도록 흩어져서 나타남
#alpha = 0.5 : 반투명

?geom_rug 
#관측값들의 분포 밀도 상태

#축에 나타남
#sides = (r,l,b,t) :위치 조정





library(lattice)
head(singer) #성부별로 키를 나타냄
ggplot(singer, aes(x = voice.part, y = height)) +
      geom_violin(fill = "honeydew2",color = "red") +
      geom_boxplot(fill = "lightgreen", width = 0.2)

























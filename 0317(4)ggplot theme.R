library(ggplot2)
library(car)
str(Salaries)



#테마 변경
ggplot(Salaries, aes(x = yrs.since.phd, y = salary,
                     color = rank, shape = rank)) +
  geom_point() +
  facet_grid(. ~ sex) + #산점도를 성별에 따라서 다른 패널에 그리도록 작성
  theme_gray() #기본테마(회색바탕)

  
ggplot(Salaries, aes(x = yrs.since.phd, y = salary,
                       color = rank, shape = rank)) +
  geom_point() +
  facet_grid(. ~ sex) + #산점도를 성별에 따라서 다른 패널에 그리도록 작성
  theme_dark() #기본테마(회색바탕)
  
  
  
#나만의 테마 만들기
#theme(<theme attribute> = element_<element>(<aesthetic>))
#      plot.title          element_text        face
#      axis.title          element_line        size
#      axis.text           element_rect        color 
#      panel.background    element_blank       fill 
#      panel.grid                              linetype...
#      panel.grid.major.y...
  
#ex)panel.background = element_rect(fill = "snow", color = "darkblue")  




##########<나의 테마 만들기 과정>##########

#제목 변경
#face = "bold.italic" : blod,italic 의 글씨체 둘 다 적용
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(plot.title = element_text(face = "bold.italic", size = 14,
                                  color = "brown"))




#배경색 색과 테두리 변경
theme()
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(panel.background = element_rect(fill = "gold", color = "green3")) +
  theme(plot.title = element_text(face = "bold.italic", size = 14,
                                          color = "brown"))
        


#panel.grid.major.y
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(panel.background = element_rect(fill = "gold", color = "green3"),
        panel.grid.major.y = element_line(color = "gray",
                                          linetype = "solid")) +
  theme(plot.title = element_text(face = "bold.italic", size = 14,
                                  color = "brown"))




#panel.grid.minor.y
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(panel.background = element_rect(fill = "gold", color = "green3"),
        panel.grid.major.y = element_line(color = "gray",
                                          linetype = "solid"),
        panel.grid.minor.y = element_line(color = "gray",
                                          linetype = "dotted")) +
  theme(plot.title = element_text(face = "bold.italic", size = 14,
                                  color = "brown"))





#범례 설정
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(panel.background = element_rect(fill = "gold", color = "green3"),
        panel.grid.major.y = element_line(color = "gray",
                                          linetype = "solid"),
        panel.grid.minor.y = element_line(color = "gray",
                                          linetype = "dotted"),
        legend.position = "top") +
  theme(plot.title = element_text(face = "bold.italic", size = 14,
                                  color = "brown")) 
  





####axis : 축(글씨)에대한 변경
####axis.title
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(panel.background = element_rect(fill = "gold", color = "green3"),
        panel.grid.major.y = element_line(color = "gray",
                                          linetype = "solid"),
        panel.grid.minor.y = element_line(color = "gray",
                                          linetype = "dotted"),
        legend.position = "top") +
  theme(plot.title = element_text(face = "bold.italic", size = 14,
                                  color = "brown")) +
  theme(axis.title = element_text(face = "bold.italic", size = 8,
                                  color = "tomato"))  
  
  


####axis.text
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(panel.background = element_rect(fill = "gold", color = "green3"),
        panel.grid.major.y = element_line(color = "gray",
                                          linetype = "solid"),
        panel.grid.minor.y = element_line(color = "gray",
                                          linetype = "dotted"),
        legend.position = "top") +
  theme(plot.title = element_text(face = "bold.italic", size = 14,
                                  color = "brown")) +
  theme(axis.title = element_text(face = "bold.italic", size = 8,
                                  color = "tomato"))  +
  theme(axis.text = element_text(face = "bold", size = 9,
                                 color = "royalblue"))



#최종적으로 나의 테마를 간략하게 만들기
ggplot(Salaries, aes(x =rank, y =salary, fill = sex)) +
  geom_boxplot() +
  labs(title = "Salary by Rank and sex", 
       x = "Rank", y = "Salary") +
  theme(panel.background = element_rect(fill = "gold", color = "green3"),
        panel.grid.major.y = element_line(color = "gray",
                                          linetype = "solid"),
        panel.grid.minor.y = element_line(color = "gray",
                                          linetype = "dotted"),
        legend.position = "top" ,
  plot.title = element_text(face = "bold.italic", size = 14,
                                  color = "brown"),
  axis.title = element_text(face = "bold.italic", size = 8,
                                  color = "tomato"),
  axis.text = element_text(face = "bold", size = 9,
                                 color = "royalblue"))








##########<만들어진 나의 테마로 재활용하기>##########

mytheme <- theme(panel.background = element_rect(fill = "gold", color = "green3"),
                 panel.grid.major.y = element_line(color = "gray",
                                                   linetype = "solid"),
                 panel.grid.minor.y = element_line(color = "gray",
                                                   linetype = "dotted"),
                 legend.position = "top" ,
                 plot.title = element_text(face = "bold.italic", size = 14,
                                           color = "brown"),
                 axis.title = element_text(face = "bold.italic", size = 8,
                                           color = "tomato"),
                 axis.text = element_text(face = "bold", size = 9,
                                          color = "royalblue"))


#<lattice 그래프를 들고와서 mytheme를 재활용 하기>
library(lattice)
ggplot(singer, aes(x = voice.part, y = height)) +
  geom_boxplot() + 
  labs(title = "Height by voice part",
       x = "Voice Part", y = "Height") +
  mytheme













  
  
  

  
  
  
  
  
  
  
  
  
  
    
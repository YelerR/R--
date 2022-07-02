str(Titanic)
class <- margin.table(Titanic, margin = 1)
class
barplot(class,
        main = "simple bar chart")


#수직막대도표
barplot(class,
        xlab = "class",
        ylab = "number of passengers",
        main = "simple bar chart")


#수평막대도표

barplot(class, horiz = TRUE,
        xlab = "class",
        ylab = "number of passengers",
        main = "simple bar chart")


#x축과 y축이 바뀌었기 때문에 제목도 바꿔줘야한다
barplot(class, horiz = TRUE,
        xlab = "number of passengers",
        ylab = "class",
        main = "horizontal bar chart")



###2차원 막대도표

#1번째 차원은 승객구분 
#4번째 차원은 생존여부
survival.by.class <- margin.table(Titanic, margin = c(4,1))
survival.by.class
barplot(survival.by.class,
        main = "stacked bar chart")

#하부막대가 옆으로 나와있는 수평막대표
barplot(survival.by.class,beside = TRUE,
        main = "stacked bar chart")

#범례 자동 생성
barplot(survival.by.class,beside = TRUE,
        names.arg = c("1st class", "2nd class", "3rd class", "crew"),
        cex.names = 0.75, col = c("red", "green"), legend = TRUE,
        ylab = "survivors", las = 1, ylim = c(0, 1000), 
        main = "stacked bar chart")




#별도로 범례 설정
barplot(survival.by.class,beside = TRUE,
        names.arg = c("1st class", "2nd class", "3rd class", "crew"),
        cex.names = 0.75, col = c("red", "green"),
        ylab = "survivors", las = 1, ylim = c(0, 1000),  #위치
        main = "stacked bar chart")
legend(x = 1, y = 900, legend =c("Dead", "Alive"),
       fill =  c("red", "green"),
       title = "status")  
                        #데이터 표현을 심볼로했으면 pch
                        #데이터 표현을 선으로 했으면 lty 
                        #데이터 표현을 상자, 원 등 같은 면으로 했으면 fill



#하부막대 상대적 비교
survival.by.class
survival.prop <- prop.table(survival.by.class, margin = 2) #1은 행/2는 열
survival.prop
barplot(survival.prop, col = c("maroon", "skyblue"),
        xlab = "class", ylab = "ratio of surviors", las = 1,
        main = "Survivors by class (Ratio")


install.packages("vcd")
library(vcd)
#gp인수는 색상 지정 (spine함수가 요구하는 데이터객체 형태로 변환 후 지정)
spine(survival.by.class, gp = gpar(fill = c("mistyrose", "lightblue")),
      main = "spine plot of surviors by class")





str(chickwts)
height <- tapply(chickwts$weight, chickwts$feed, mean)
height
barplot(height, xlab = "feed type", ylab = "mean chicken weights(g)",
        ylim = c(0, 400), las = 1, main = "chicken weights by feed")


#막대도표 옵션
str(UCBAdmissions)

admission.by.dept <- margin.table(UCBAdmissions, margin= c(1, 3))
admission.by.dept

#density막대 내부를 채우는 사선의 밀도
#angle는 막대의 각도를 지정 (기본각도 45도)
barplot(admission.by.dept, density = 15 , angle = 135 )

#막대 테두리 색상(기본 검정색)
#col 하부막대 색상
barplot(admission.by.dept, border = "orange", col = c("lightblue", "mistyrose"))

#막대간 간격 (0은 붙어서 나타남)
barplot(admission.by.dept,  space = 0)
barplot(admission.by.dept,  space = 2)

#수평막대도표
#space(같은 집단 내에서의 막대간 간격(기본값 0), 집단들 사이의 간격(기본값 1))
barplot(admission.by.dept, space = c(0.3, 2.0), beside = TRUE)

#좌표측 출력 여부
barplot(admission.by.dept, axes = FALSE) 

#수평막대도표 생성
barplot(admission.by.dept, horiz = TRUE, axes = FALSE)








str(cars)
plot(cars$speed, cars$dist)
plot(cars)


str(ToothGrowth)
plot(ToothGrowth$supp,ToothGrowth$len)
plot(ToothGrowth)

str(iris)
plot(iris[,1:4])

str(nhtemp)
plot(nhtemp)


#모자이크 도표
str(UCBAdmissions)
plot(UCBAdmissions)

#대기시간을 종속변수 / 분출시간을 독립변수로 사용
str(faithful)
faithful.lm <- lm(waiting ~ eruptions, data = faithful)
class(faithful.lm)
plot(faithful.lm)



#그래프 저장방법
plot(faithful)
list.files(pattern = "myplot.jpeg") #저장 되어있는지 확인
install.packages("pander")
library(pander) 
#pander패키지에 포함된 openFileInOS로 파일 불러오기
openFileInOS("myplot.jpeg") #파일이미지로 불러오는 방법

#별도의 윈도우 창으로 그래프를 생성했을 시
windows(width =12,height = 8)
plot(faithful)
saveplot(filename = "myplot", type = "pdf")
list.files(pattern = "myplot.pdf")
library(pander)
openFileInOS("myplot.pdf")


?png
?pdf
?postscript

#png파일로 저장 후 호출
png("myplot.png", width = 648, height = 432)
plot(faithful)
dev.off() #파일 오픈함수를 닫으면 그래프가 png함수에 지정된 형식대로 파일로 생성
list.files(pattern = "myplot.png")
library(pander)
openFileInOS("myplot.png")



























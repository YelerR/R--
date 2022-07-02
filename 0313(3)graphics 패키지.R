###고수준 그래픽 함수
#plot() :제네릭 그래프 생성
#boxplot() :상자도표 생성
#hist() :히스토그램 생성 
#qqnorm() :Q-Q도표 생성
#curve() :사용자 정의 함수로부터 그래프 생성


###저수준 그래픽 함수
#points() :점 추가
#lines() :선 추가
#abline() :직선 추가
#segments() :꺾은선 추가
#polygon() :다각형 추가
#text() :텍스트 추가


#저수준 그래픽 함수를 호출하기 전에는
#반드시 고수준 그래픽 함수를 먼저 호출해야 한다

plot(faithful)

eruptions.long <- faithful[faithful$eruptions > 3, ]

#points(우측상단에 클러스트를 관측하고 있는 데이터셋, 색상, 점으로 사용하고자 하는 심볼)
points(eruptions.long, col = "red", pch = 19)


#기존 그래프 삭제
dev.off() 

#고수준의 그래픽을 먼저 생성을 안해서 오류가 발생한다
points(eruptions.long, col = "red", pch = 19)


#lines함수를 이용해서 산점도 상에 대기시간과 분출시간의 관계를 보여주는 
#선형회계선

#lm(종속변수 ~ 독립변수, data모델)
faithful.lm <- lm(waiting ~ eruptions, data = faithful)



########그래프 만들어보기########


plot(faithful)
points(eruptions.long, col = "red", pch = 19)
#x인수에는 분출시간
#y인수에는 분출시간을 독립변수로 사용했을 때
#회계모드를 사용했을 때 예측되는 대기시간(fitted함수)의 예측값
lines(x= faithful$eruptions, y = fitted(faithful.lm), col = "blue")

#분출시간이 3분인 지점의 수직선을 그릴 때
abline(v = 3, col = "purple")

#평균 대기시간을 가로지르는 수평선을 그릴 때
abline(h = mean(faithful$waiting), col = "green")

#회계모델 객체를 인수로 지정하게 되면 회계선을 그릴 수 있다
abline(faithful.lm, col = "blue")











#####<그래프 파라미터>

plot(faithful)
#####제목과 축#####
plot(faithful,
     main = "Old Faithful Geyser",        #제목
     sub = "Yellowstone National Park",   #부제목
     xlab = "eruption time (minutes)",    #x축
     ylab = "waiting time( minutes)")     #y축



plot(faithful, las = 0) #기본값
plot(faithful, las = 1) #수평으로 바뀜
plot(faithful, las = 2) #x축이 직각으로 바뀜
plot(faithful, las = 3) #y축이 수직으로 변경

#그래프 영역을 둘러싼 박스형태로 변경하기 위해서는 bty인수 사용
plot(faithful, bty = "o") #기본값
plot(faithful, bty = "n") #주면 박스 테두리를 지워줌
plot(faithful, bty = "l") #L모양으로 변경해준다
plot(faithful, bty = "]") #]모양으로 변경해준다








#####심볼과 선#####

#선을 지정하는 방법 pch형식
#0~25까지의 모양으로 표현 가능
plot(faithful, pch = 25)
plot(faithful, pch = 2)
plot(faithful, pch = 3)
#색상도 뒤에 숫자로 변경 가능하다
plot(faithful, pch = 4, col = "green4") 

#21번같은 경우에는 겉에 색상과 속에 생각을 다르게 표현이 가능하다
#col는 테두리 색상  /  bg는 속에 색상
plot(faithful, pch = 21, col = "dimgray", bg = "red" ) 
plot(faithful, pch = 22, col = "green4", bg = "red") 


str(LakeHuron)
plot(LakeHuron) # plot(LakeHuron, lty = "solid")
                # plot(LakeHuron, lty = 1)
plot(LakeHuron, lty = "dashed") 
plot(LakeHuron, lty = "dotted")
plot(LakeHuron, lty = "dotdash")
plot(LakeHuron, lty = "longdash")
plot(LakeHuron, lty = "twodash") #plot(LakeHuron, lty = 2)

plot(LakeHuron, lty = 1)
plot(LakeHuron, lty = 2)
plot(LakeHuron, lty = 3, col = "red") #색상 넣기도 가능






#####그래프 유형#####
str(pressure)
#기온과 기압을 보여주는 산점도
plot(pressure) #p가 자동으로 설정된다
plot(pressure, type = "p") #p는 기본값 설정

plot(pressure, type = "l") #산점도가 선도표로 변경
plot(pressure, type = "b") #점과 선 함께 표현
plot(pressure, type = "o") #점과 선이 겹쳐서 표현
plot(pressure, type = "h") #수직선으로 히스토그램처럼 표현
plot(pressure, type = "s") #계단식 표현
plot(pressure, type = "n") #아무것도 그려지지 않는다(그래프 초기화)




#백지에 만들어보기

x <- 1:10
y1 <- exp(1:10)
y2 <- exp(10:1)

plot(x, y1, xlab = "x", ylab = "y", type = "n") #우선 산점도를 만든다
lines(x, y1, type = "o", pch = 21, col = "red")
lines(x, y2, type = "o", pch = 22, col = "blue")


#격자선
plot(faithful)
plot(faithful, type = "n")
grid()
points(faithful, pch = 19, col = "blue")



#이렇게 해도 되지만
#grid함수가 기존 그래프를 덮어버린다
plot(faithful, pch = 19, col = "blue")
grid()



#####색상#####
#colors in r 홈페이지 참고
#http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
colors()

install.packages("rainbow")
palette() #col인수에 8개의 인덱스를 이용해서 사용 가능하다 [1~8]
palette(rainbow(6))
palette("default") #기본색상으로 돌아감


#하양색 출력 코드
#col = "white", col = "#FFFFFF", rgb(1, 1, 1), col = hsv(0, 0, 1)


n <- 12
pie(rep(1, n), col = 1:n) 

rainbow()
heat.colors()  #따뜻한 색감
terrain.colors() #초록색 파랑색 노랑색 느낌
topo.colors() #초록색 파랑색 노랑색 느낌
cm.colors() #마젠타색
gray() #회색조의 그라데이션 효과


pie(rep(1, n), col = rainbow(n)) 
pie(rep(1, n), col = heat.colors(n)) 
pie(rep(1, n), col = terrain.colors(n)) 
pie(rep(1, n), col = topo.colors(n))
pie(rep(1, n), col = cm.colors(n))
pie(rep(1, n), col = gray(level = seq(0, 1, length = n)))

#투명도
pie(rep(1, n), col = rainbow(n, alpha = seq(0, 1, length = n))) 
pie(rep(1, n), col = gray(level = seq(0, 1, length = n),
                          alpha = seq(0, 1, length = n))) 



library(RColorBrewer)
display.brewer.all()#색상 종류와 색상 확인
display.brewer.pal(3, "Dark2") #특정색상 팔레트로부터 색상을 추출
display.brewer.pal(9, "Blues")

n <- 9
pie(rep(1,n), col = brewer.pal(n, "Blues"))
pie(rep(1,n), col = brewer.pal(n, "Greens"))
pie(rep(1,n), col = brewer.pal(n, "BuGn"))



plot(faithful, pch = 19, col = "tomato",
     main = "Old Faithful Geyser",        #제목
     sub = "Yellowstone National Park",   #부제목
     xlab = "eruption time (minutes)",    #x축
     ylab = "waiting time( minutes)",
     col.main = "navy", col.sub = "purple",
     col.lab = "royalblue", col.axis = "brown") 




#크기
x <- seq(0.5, 1.5, 0.25)
y <- rep(1, length(x))
#cex에 x벡터 지정
#x벡터의 각 원소값에 대응되는 크기를 갖는 점들이 그려지게 된다.
plot(x, y, pch = 19, cex = x,
     main = "Effects of cex on symbol and text size")

#labels = x -> 텍스트에 추가할 함수로 x벡터 입력
text(x, y + 0.2, labels = x, cex = x)



#그래프 제목의 변경
#cex.main(제목)=1.5(50%크게)
#cex.lab(축이름의 크기) = 1.0(본래와 동일)
#cex.axis(축레이블) = 0.75(25%작게)
plot(x, y, pch = 19, cex = x,
     main = "Effects of cex on symbol and text size",
     cex.main = 1.5, cex.lab = 1.0, cex.axis = 0.75)


#lwd -> 선의 굵기
plot(LakeHuron, lwd = 1)


#글꼴과 글씨체
windowsFonts()


plot(faithful,
     main = "Old Faithful Geyser",        #제목
     sub = "Yellowstone National Park",   #부제목
     xlab = "eruption time (minutes)",    #x축
     ylab = "waiting time( minutes)",
     family = "sans")








windowsFonts(
    A = windowsFont("Arial Black"),
    B = windowsFont("Book Antiqua"),
    C = WindowsFont("Calisto MT")
)

plot(faithful,
     main = "Old Faithful Geyser",        #제목
     sub = "Yellowstone National Park",   #부제목
     xlab = "eruption time (minutes)",    #x축
     ylab = "waiting time( minutes)",
     family = "C")





#폰트크기

plot(faithful, pch = 19, col = "tomato",
     main = "Old Faithful Geyser",        #제목
     sub = "Yellowstone National Park",   #부제목
     xlab = "eruption time (minutes)",    #x축
     ylab = "waiting time( minutes)",
     family = "serif",
     font.main = 4, font.sub = 1,
     font.lab = 3, font.axis = 2)











n <- 10000
set.seed(123)
block1 <- matrix(rnorm(n, mean = 0, sd = 1), ncol = 2)
head(block1)
nrow(block1)


block2 <- matrix(rnorm(n, mean = 3, sd = 1.5), ncol = 2)
head(block2)
nrow(block2)
mysample <- rbind(block1, block2)
mysample <- as.data.frame(mysample)
names(mysample) <- c("X", "Y")
head(mysample)
tail(mysample)

plot(mysample$X, mysample$Y, pch = 19,
     xlab = "x", ylab = "y")


#산점도 중첩 정도 표현 방법 1
#밀도에 따라 색상의 진한 정도를 조절 (고밀도 산점도)
smoothScatter(mysample$X, mysample$Y, 
              xlab = "x", ylab = "y")



#산점도 중첩 정도 표현 방법 2
#육각형으로 나타남
install.packages("hexbin")
library(hexbin)
#xbin x축의 데이터 범위를 분할하는 셀의 개수를 지정
#큰값을 지정할 수 록 육각형 셀이 작게 표현
hexbin(mysample$X, mysample$Y, xbins = 50)
plot(hexbin(mysample$X, mysample$Y, xbins = 50)
     xlab = "X", ylab = "Y")


#색으로 그라데이션 표현
plot(hexbin(mysample$X, mysample$Y, xbins = 50),
     colramp = terrain.colors,
     xlab = "X", ylab = "Y")















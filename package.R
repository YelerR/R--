library()
Sys.setlocale("LC_ALL","Englisg")


installed.packages()
colnames(install.packages())
installed.packages()[, c("Package","Version")]


search()


m <- matrix(1:6, 3, 2)
m
t(m) #행렬 변경

rm(t)
#101 102...로 나오면 t값을 없에야한다
#rm(t)

t <- function(x) x +100
t(m)

#네임스페이스
base::t(m) #베이스 패키지에서 t를 가져온다

xyplot(dist ~ speed, data=cars)

library(lattice)
search()

xyplot(dist ~ speed, data=cars)
library(lattice) #library함수를 통해서 메모리에 추가를 하고 이용해야한다


detach(package:lattice) #package 삭제
search()
xyplot(dist ~ speed, data=cars)


#새로운 패키지 추가
install.packages("ggplot2")
.libPaths()  #package설치된 경로 확인 가능

#package 포함된 함수 확인방법
help(package = "ggplot2")
library(help = ggplot2)
ls("package:ggplot2")
search()

#datasets package
#사용가능한 data 확인
data()


#처음 6개 데이타를 보여줌
head(AirPassengers)
head(cars)


#마지막 6개 데이터를 보여줌
tail(cars)

#숫자를 입력해주면 원하는 수만큼 보여줌
head(cars,5)
tail(cars,3)

#전체 데이타셋을 보여줌
cars

#자세한 데이타 내용
help(cars)

#MASS라는 패키지에 포함되는 데이터가 무엇인지 
data(package="MASS")

data(Animals,package="MASS")
head(Animals)


#오류뜨는 이유는 MASS라는 패키지가 메모리에 적재가 안됐기 때문에
head(UScrime)

#오류해결
#MASS package에 포함된 모든 데이타를 볼 수 있다
library(MASS) #library를 이용해서 MASS package를 넣어준다
head(UScrime)


























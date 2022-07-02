#행렬인덱싱
v <- 1:12
mat <- matrix(v, 3, 4)
mat
str(mat)

mat[1,] #첫번째 행에 대한 인덱스(벡터로 출력됨)
mat[,1] #첫번째 열에 대한 인덱스(베터로 출력됨)


mat[1,,drop=FALSE] #원래의 행렬의 차원을 그대로 유자하면서 첫번째 행만을 출력
                   #행렬 형식으로 출력
mat[,3,drop=FALSE]

#여러행 여러열 추출
mat[2:3,] #2번째 행과 3번째 행 그리고 모든 열 추출
mat[,2:3]
mat[1:2,2:3]
mat[c(1,3),] #첫번째 행과 세번째 행 모든열 추출
             #인덱스는 새롭게 부여돼서 출력된다


#음수로 주면 제거된다
mat[,-c(2,3)] #2번째3번째 열은 제외하고 1번째4번째 열만 출력


#원하는 셀의 값 변경
#대체할 벡터를 행렬 인덱스에 입력해주면 된다

mat[1,3] <-  77
mat


mat[2,] <- c(22,55)  #재사용규칙
mat


mat[2:3, 3:4] = 100
mat

mat[2:3, 3:4] = c(1,2,3,4)
mat




city.distance <- c(0, 331, 238, 269, 195,
                   331, 0, 95, 194, 189,
                   238, 95, 0 ,171, 130,
                   269, 194, 171, 0, 77,
                   195, 189, 130, 77, 0,)
city.distance
city.distance.mat <- matrix(city.distance, 5, 5,
                            byrow = TRUE)
city.distance.mat


#행렬에 이름을 주는 방법
colnames(city.distance.mat) <-  c("Seoul", "Busan", "Daegu", "Gwangju",
                                  "jeonju")

rownames(city.distance.mat) <- c("Seoul", "Busan", "Daegu", "Gwangju",
                                 "jeonju")

colnames(city.distance.mat)
rownames(city.distance.mat)
city.distance.mat


#서울과 부산 사이의 거리는?
city.distance.mat["Seoul", "Busan"]

#서울부터 모든 지역과의 거리
city.distance.mat[,"Seoul"]

#서울 및 광주 와 나머지 도시의 거리
city.distance.mat[c("Seoul", "Gwangju"), ]














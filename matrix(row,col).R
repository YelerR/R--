####행렬
v <- 1:12
dim(v) <- c(3,4) #3행4열 2차원의 행렬을 만든다
v


aa <- matrix(v,3,4)
aa

aa <- matrix(1:12,3,4)
aa


v <- 1:12
matrix(data = v, nrow = 3, ncol =4)

#행의 방향으로 출력
matrix(data = v, nrow = 3, ncol =4, byrow = TRUE)




rnames <- c("R1", "R2", "R3")
colnames <- c("C1", "C2", "C3", "C4")
#행과 열의 이름을 정해줄 때 (dimnames)
matrix(data = v, nrow = 3, ncol = 4,
       dimnames = list(rnames, colnames))


matrix(data = v, nrow = 3, ncol = 4,
       dimnames = list(rnames))



#행과 열의 같은 값을 넣어주고 싶을 때
matrix(1, 3 ,4)   #(data, row, col)
?matrix
matrix(NA,3,4)



matrix(v, ncol = 4) #값의 길이가 정해져 있을 때
                    #행과 열 중 하나만 입력해도 
                    #컴퓨터가 알아서 계산해서 출력해준다





mat <- matrix(v, ncol = 4)
mat
str(mat)




#행과 열의 개수 확인
dim(mat)

dim(mat)[1]  #행의 개수
nrow(mat)

dim(mat)[2]  #열의 개수
ncol(mat)

length(mat) #행열을 구성하는 셀의 개수를 출력



#벡터를 갖고 행렬을 만드는 방법
####rbind 행의 방향으로 벡터를 결힙
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(5, 7, 8 ,9, 10)
rbind(v1, v2)
  

####cbind 열의 방향으로 벡터를 결합
cbind(v1, v2)


#행과 열의 결합
cbind(1:3, 4:6, matrix(7:12, 3, 2)) #첫번째 col 1,2,3
                                    #두번째 col 4,5,6
                                    #세번째 네번째 7,8,9,10,11,12 3행2열

rbind(matrix(1:6 , 2, 3), matrix(7:12, 2, 3))


#<벡터를 결합하고, 행열을 결합하고 행열과 행열을 결합할 때는 크기가 맞아야한다>
#서로 크기가 다른 행열의 벡터를 결합할 때는 작동하지 않는다
















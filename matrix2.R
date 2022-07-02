mtx <- matrix(1:6, 2, 3)
mtx
mtx + 1  #행열에 각각의 셀에 1씩 더해진다
mtx - 1
mtx * 2
mtx / 2




#행렬과 행렬의 사칙연산도 가능하다
#행렬의 각각의 개수가 같아야한다
a <- matrix(1:6, 2, 3)
a
b <- matrix(6:1, 2, 3)
b
a + b
a - b
a * b
a / b


#연산하고자 하는 행렬의 차원이 다르면 연산이 불가능
c <- matrix(6:1, 3, 2)
c
a
a + c


#정확한 행렬곱셈 연산방식
#행행 열열의 개수가 같아야한다
#% * %
  
  
a <- matrix(1:6, 2, 3)
a
b <- matrix(1:6, 3, 2)
b
a %*% b


c <- matrix(1:6, 2, 3)
c
a %*% c   #조건 충복하지 못하기 때문에 오류




mtx <- matrix(1:6, 2, 3)
mtx
mtx %*% 1:3  #자동으로 변환이 된다



mtx %*% 1:2 #아무리 자동으로 변환을 해줘도 
            #행렬 계산이 불가능한 행렬은 연산이 불가능하다
            #행이 같아야 연산이 가능하다

1:2 %*% mtx #차원이 일치하기 때문에 연산이 가능해진다




mtx <- matrix(1:6, 2, 3)
mtx

mtx + 1:3  #열의 방향으로 더해짐
           #재사용규칙이 사용됨




mtx
rowSums() #행의 합
colSums()#열의 합
rowMeans()#행의평균
colMeans()#열의 평균


rowSums(mtx)
colSums(mtx)
rowMeans(mtx)
colMeans(mtx)



####전치행렬
mtx <- matrix(1:6, 2, 3)
mtx
t(mtx) #행렬 위치 변경


1:5
t(1:5)


mtx
mtx[2,] #2번째 행 출력
t(mtx[2,]) #



#행렬에서 특정 행이나 열을 출력해서 전체 행렬을 바꿀 때는
#주의가 필요하다!!!!!




ls()
rm(t)
























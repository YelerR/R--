1 + 2
"+"(1,2) #여기서의 +는 벡터의 원소단위로 적용된다

#벡터는 원소대 원소로 계산
#개수가 같기 때문에 1:1 연산이 가능하다
c(1,2,3) + c(4,5,6) # +라는 연산 함수는 각 원소끼리 더해준다.
c(1,2,3) * c(4,5,6)
c(10,20,30) / c(2,4,6)

c(10,20,30) %% c(3,5,7) # %%연산자는 나눈 후에 나머지를 계산

#앞뒤 개수가 다르면?
#재사용규칙(recycling rule)
#벡터의 길이가 다르면 길이가 짧은쪽의 원소를 재사용해서
#길이가 긴쪽의 원소에 맞춘다

c(1,2,3) + c(4,5,6,7,8,9) #1 -> 4   /  2 -> 5  / 3 -> 6  
                          #1 -> 7   /  2 -> 8  / 3 -> 9
                      
c(1, 3, 5) + 10   # 1 -> 10   /  3 -> 10   /  5 -> 10


#앞 뒤의 개수가 딱 맞아 떨어지지 않을 때는?
c(1,2,3) + c(4,5,6,7,8)  #연산은 발생하지만 경고메세지가 발생


#r에서 사용되는 논리연산자
==, !=, <, >, <=, >=, !x (x가 아니다), x | y, x & y, isTRUE()

v <- pi
w <- 10/3
v == w
v != w 
v > w
v < w
!(v > w)  # >의 반대값
(v == w) | (v < w)
(v == w) & (v < w)
isTRUE(v == w) #v와 w가 같은가? ->같지 않기 때문에 FALSE


#각각 맨투맨으로 비교를 해준다
y <- c(0,25,50,75,100)
z <- c(50,50,50,50,50)
y == z
y != z
y > z


y == 50 #50이 y의 개수만큼 반복해서 비교해준다
y > 50



#논리연산 가능
as.numeric(TRUE) #TRUE는 1로 /FALSE는 0으로 인식
TRUE == TRUE
TRUE * TRUE
TRUE * FALSE



y <- c(0,25,50,75,100)
y


#50보다 큰 원소의 개수를 구하기 위해서는 TRUE의 개수를 세면된다
sum(y > 50) #출력한 결과를 다 합하겠다 (TRUE의 개수 2개)

#벡터를 비교한 후 반환된 값이 전부 TRUE인지 FALSE인지 알고싶을 떄
any(-3:3 > 0) #-3부터 3까지 0보다 큰 값이 하나라도 있을 때 TRUE

#모두가 TRUE일 때 TRUE를 반환 받고 싶을 때
all(-3:3 > 0) #모두 TRUE가 아니기 때문에 FALSE


#r에서는 부등소수점수로 저장하기 때문에 
#반올림으로 인해서 오차가 발생할 수 있다
sqrt(2)^2 == 2  #루트2의 제곱은 2지만 2와 비교하면 TRUE가 아니다
sqrt(2)^2 - 2 #작은 숫자지만 0이 아니다

#두 개가 값이 같은지 비교
identical(sqrt(2)^2 ,2)

#부등소수점을 무시하고 싶을 때(아주 작은 수 무시)
all.equal(sqrt(2)^2 ,2) #TRUE


all.equal(sqrt(2)^2, 3) #TRUE가 아닌 이유에 대해서 서술해줌
isTRUE(all.equal(sqrt(2)^2, 3)) 



#한 번에 여러개를 문자열을 결합 가능
fruit <-  c("Apple", "Banana", "Strawberry")
food <-  c("Pie", "Juice", "Cake")
paste(fruit, food) #맨투맨 벡터연산 수행


#재사용규칙도 가능
fruit <-  c("Apple", "Banana", "Strawberry")
food <-  c("Pie", "Juice", "Cake")
paste(fruit, "Juice") #Juice가 3번 반복







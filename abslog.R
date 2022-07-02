#절대값
abs(-3:3)

#로그값
log(1:5)

#베이스인수지정
log(1:5, base = exp(1))

#자주 사용되는 지수 로그는 지정되어있음
log2(1:5)
log10(1:5)


#자연상수 e 계산
exp(1:5)


y <- exp(1:5)
y
log(y)


#펙토리얼
factorial(1:5)


#컴비네이션 조합을 계산
choose(5, 2)    #5개에서 2개를 뽑는 방법의 경우의 수


#각 원소에 대한 제곱근
sqrt(1:5)


#수치계산 결과를 7자리 수로 보여줌
options("digits")  #7자리
pi
pi*100


#유효숫자 개수를 지정 가능
signif(456.789, digits = 2)
signif(456.789, digits = 3)
signif(456.789, digits = 4)
signif(456.789, digits = 5)
a = signif(456.789, digits = 6)

#반올림함수
round(a)
round(456.789, digits = 2) #소수점이하 두자리
round(456.789) #digits함수를 지정 안해주면 정수로 출력된다
round(sqrt(1:5), digits = 2)
round(456.789, digits= -2)  #10의 제곱승 100단위로 출력
round(456.789, digits= -1)  #10의 1승 10단위로 출력



#반올림은 5를 기준으로 이상이면 올리고 미만이면 내리지만
#r언어의 round 반올림 함수는 반올림 해야할 숫자가 5이면 
#가장 가까운 짝수로 반올림한다
round(11.5) #가장 가까운 짝수 12
round(12.5) #13이 아니라 가까운 짝수 12로 반올림
round(13.5)
round(-3.5)
round(-4.5)
round(-5.5)



#무족건 내리는 함수
#가장 가까운 정수로 내림
floor(3.8)
floor(2.1)
floor(-1.3)
floor(-3.1)


#무족건 올리는 함수
#가장 가까운 정수로 올림
ceiling(3.8)
ceiling(2.1)
ceiling(-1.3)
ceiling(-3.1)

#0에 가장 가까운 정수로 반올림
trunc(0.4)
trunc(2.1)
trunc(-1.3)
trunc(-3.1)


#계산을 수행한 값이 무한대일경우
#양의 무한대
Inf
#음의 무한대
-Inf

3/0
5-Inf
Inf * Inf
Inf * -Inf

#어떤 값이 무한대인지 -무한대인지 확인 가능한 함수
is.infinite(3/0)
is.infinite(Inf * -Inf)

#컴퓨터에서 수용 가능한 제일 큰 수
1.8 *10^308  #r에서는 이 수보다 큰 수는 무한대로 인식
is.infinite(10^(305:310))


#NaN (Not a Number) 계산값을 정의가 불가능하다
Inf / Inf
Inf * 0
NaN * 2

#계산 자체가 불가능한 경우(음수에 log를 취한 경우)
log(-2)


#NaN값인가 판별
is.nan(NaN + 3)


#결측값(갖고있지 않은 값)
NA(Not Available)

k <- NA
k
k + 5
sqrt(k)

#NA값 판별
is.na(k)
is.na(k +5)
is.na(NaN)



z <- 1:5
z
sum(z)  #합
prod(z) #곱
max(z)  #최대
min(z)  #최소

z
mean(z) #평균
median(z) #중간값
range(z) #최대값과 최소값의 범위
var(z) #분산
sd(z) #표준편차


w <- c(1,2,3,4,5,NA)
w
sum(w) #NA값이 들어있기 때문에 NA값 출력
sum(w,na.rm = TRUE) #NA값을 빼고 결과를 출력
sum(na.omit(w)) #NA값을 뺴고 결과를 출력


#모든 계산값에 NA가 들어있을 때는 계산값이 
#생각과는 다르게 출력될 수 있다
v <- c(NA, NA, NA, NA, NA)
v
#4가지는 약속된 값을 출력
sum(v , na.rm = TRUE) #NA를 제거하고 합을 계산하면 0 
prod(v, na.rm = TRUE) #NA를 제거하고 곱을 계산하면 1
max(v, na.rm = TRUE)  #NA를 제거한 최대값 -Inf
min(v, na.rm = TRUE)  #NA를 제거한 최소값 Inf





#cunsum 함수
#누적으로해서 각 위치에서의 계산

trafic.death <- c(842, 729, 786, 751, 844, 851, 702)
trafic.death

#누적으로 합을 구해주는 함수
cumsum(trafic.death)


#누적으로 곱을 구헤주는 함수
cumprod(trafic.death)


#누적으로 최대값을 구해주는 함수
cummax(trafic.death)


#누적으로 최소값을 구해주는 함수
cummin(trafic.death)


#결측값을 포함한 체로 계산을 하게될시
#NA가 나오게되는 위치부터 그 뒤로는 NA가 출력된다
cumsum(c(3, 5, 1, NA, 2))



#인접한 두 원소간의 차이를 계산하는 함수
trafic.death <- c(842, 729, 786, 751, 844, 851, 702)
diff(trafic.death)#729 - 842  / 786 - 729이런식으로 뒤에서 앞으로 계산
                  #출력된 원소의 개수는 입력 원소의 개수보다 
                  #한개 적다
diff(c(3,5,1,NA,2)) #NA가 들어간 값부터는 NA를 출력

#간격 지정
diff(1:5, lag = 2) #출력값 2 2 2
                   #첫 번째부터 3-1 4-2 5-3
                   #두칸씩 떨어져 있는 값의 계산


#집합
union()     #합집합
intersect() #교집합
setdiff()   #차집합

p <- 1:10
p
q <- 6:15
q

#합집합
union(p,q)

#교집합
intersect(p,q)

#차집합
setdiff(p,q)
setdiff(q,p)

#두 값이 동일한지 비교
setequal(p,q)


#첫번째 인수로 주어진 각 원소가 
#두번째 인수로 주어진 벡터의 원소인지 비교
is.element(setdiff(p,q), p)
is.element(setdiff(p,q), q) #포함이 안되어 있기 때문에 FALSE















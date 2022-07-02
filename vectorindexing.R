num <- 0:30
num  #출력값에 [] 안에 들어가있는 숫자는 인덱스값을 표시  
     #인덱스는 1부터 시작




##########벡터인덱싱 1번째 방법
#인덱스값 내용 출력
#중복 가능
prime <- c(2,3,5,7,11,13,17,19)
prime
prime[1]
prime[5]
prime[3:5] #3,4,5번째의 벡터 출력
prime[4:6] #4,5,6번째의 벡터 출력
prime[c(1,1,5,5)] #1번째 1번째 5번째 5번째 벡터 출력

#순서 변경도 가능
prime[c(1,3,5,7)]
prime[c(7,3,5,1)]


#변수로 지정을해서 추출도 가능
indices <- c(1,3,5,7)
indices #데이터 입력값 (1,3,5,7)
prime[indices] #1,3,4,7 순서에 해당되는 데이터 값


prime[-1]     #첫번째 원소를 제외한 숫자가 출력
prime[-1:-3]  #첫번째부터 세번째 원소까지 제외하고 출력
prime[-(1:3)] #첫번째부터 세번째 원소까지 제외하고 출력


#마지막 원소만을 제거
length(prime)  #prime의 길이
prime[1:length(prime)-1] #마지막을 제외한 원소 출력
prime[-length(prime)]    #마지막을 제외한 원소 출력



#바꾸고자 하는 위치의 인덱스 값을 설정
prime <- c(2,4,5,6,11,14,17,18)
prime
prime[2] = 3 #2번째 위치의 4를 3으로 변경
prime

prime[c(6,8)] = c(4,5)
prime

prime[1:3] = 3
prime



#원하는 위치에 값 추가
prime <- c(2, 3, 5, 7, 11, 13, 17, 19)
prime
length(prime)
prime[9] = 3 #9번째 인덱스는 존재하지 않지만 추가 가능
prime
prime[c(10,11)] = c(30, 36)
prime


length(prime)
prime[15] = 5   #11번째 인덱스에서 12~14번째 인덱스 값 건너뛰고 추가
prime           #비어있는 곳은 NA값이 출력


#논리연산으로 값 추출 가능
prime <- c(2,3,5,7,11,13,17,19)
prime < 10 #논리연산값 추출
prime[prime < 10] #TRUE에 해당되는 값 추출

prime %% 2 == 0  
prime[prime %% 2 == 0]


#인수로 주어지는 벡터의 길이만큼의 
#정수를 1부터 그 길이만큼의 정수를 생성
prime
seq_along(prime)
seq_along(prime) %% 2 == 0 #매 두번째마다 원소의 해당되는 인덱싱
prime[seq_along(prime) %% 2 == 0] #두번째마다 추출
prime[seq_along(prime) %% 3 == 0]

prime[c(FALSE, TRUE)] #재사용규칙 가능(FALSE,TRUE반복)
prime[c(FALSE, FALSE, TRUE)] #세번째 원소 추출 가능






###########벡터인덱싱 2번째 방법
#논리값을 인수로 받아서 TRUE에 해당되는 인수를 반환
which()
which.max()
which.min()


rainfall <- c(21.6, 23.6, 45.8, 77.0, 102.2, 133.3,
              327.9, 348.0, 137.6, 49.3, 53.0, 24.9)
rainfall
rainfall < 100
which(rainfall < 100)  #TRUE의 위치값
month.name[which(rainfall < 100)]
month.abb[which(rainfall < 100)] #약자

which.max(rainfall) #제일 큰 달의 인덱스 반환
month.name[which.max(rainfall)]

which.min(rainfall)
month.name[which.min(rainfall)]


rainfall
rainfall[rainfall > 100] #true의 실제 강수량 값을 추출
rainfall[which.max(rainfall)]
rainfall[which.min(rainfall)]



###########벡터인덱싱 3번째 방법
#고유의 이름 지정
traffic.death <- c(842, 729, 786, 751, 844, 851, 702)
traffic.death


#이름 설정
names(traffic.death) <- c("Mon", "Tue", "Wed", "Thu",
                          "Fri", "Sat", "Sun")
traffic.death


traffic.death["Mon"]
traffic.death[c("Mon", "Thu")] #해당 이름에 대한 값 출력
traffic.death["Mon"] = 3  #해당값 변경
traffic.death

weekend <- c("Fri", "Sat", "Sun") #weekend라는 함수 생성
traffic.death[weekend]

#해당되는 값 출력
traffic.death[traffic.death > 800]
#해당되는 이름만을 출력
names(traffic.death[traffic.death > 800])













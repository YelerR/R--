?state #미국 50개 주에대한 정보
state.abb 
state.area
state.name
state.region



us.state <- data.frame(state.abb, state.name,
                       state.region, state.area)
us.state
str(us.state)


#[[]] 열 하나만 
#[]   여러개의 열을 데이터 프레임으로 추출


us.state[[2]] #내용물이 문제 벡터 형태로 추출
str(us.state[[2]]) 

us.state[2] #두번째 열이 데이터프레임으로 추출


#데이터 프레임 형식으로 출력
us.state[2]
us.state[c(2,4)]



us.state[,2] #모든 행에 대해서 모든 두번째 열이 추출
             #벡터형태로 
us.state[,2, drop=FALSE]
us.state[,c(2,4)] #2번째와 4번째 데이터 열이 추출






#데이터 프레임은 무족건 이름이 있어야한다.
##특정열 추출
us.state[["state.name"]]
us.state$state.name
us.state[,"state.name"]



###########<콤마>가 있냐 없냐에 따라 방법이 달라진다
us.state[c("state.name", "state.area")] #리스트인덱싱 []기법
us.state[,c("state.name", "state.area")] #행렬인덱싱(열부분 인덱싱)





state.x77
str(state.x77)
head(state.x77)







#데이터프레임으로 변경 후 
#행렬에 행 이름으로 사용된 주를 데이터프레임(변수) 열로 옮긴 후
#필요없어진 행 이름 삭제

states <- data.frame(state.x77)
str(states)
row.names(states)
states$Name <- row.names(states)
row.names(states) <-  NULL
head(states)




#조건을 이용해서 행을 선택



#부자 주와 땅이 넓은 주로 나눈다

#부자주 찾기
#행렬인덱싱
#Incom(소득)
#소득이 5000보다 큰 행
#열에서는 Name,Income
rich.states <- states[states$Income > 5000, c("Name", "Income")] 
rich.states                                          

#땅이 넓은 주 찾기
large.states <- states[states$Area > 100000, c("Name", "Area")] 
large.states


#합하기
#부자이면서 땅이 넒은 주
merge() #교집합
merge(rich.states, large.states) 


?merge

###교집합
merge(rich.states, large.states)


###합집합
merge(rich.states, large.states, all = TRUE)

















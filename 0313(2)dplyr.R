arrange()  #행을 정렬
filter()   #원하는 행을 추출 
select()   #원하는 열을 추출
mutate()   #기존에 데이터 프레임에 열을 변수를 이용해서 새로운 변수를 생성
summarise() #요약 통계량을 계산



head(airquality)
install.packages("dplyr")
library(dplyr)



####filter####
#원하는 행을 추출 
air <- filter(airquality, Month == 6)
air
head(air)

#filter = indexing
airquality[airquality$Month == 6,] 
subset(airquality, subset = (Month ==6))

#and조건(,와 &)과 or(|)조건 사용 가능

air <- filter(airquality, Month == 6 & Solar.R > 200)
air

air <- filter(airquality, Month == 6 , Solar.R > 200)
air 

air <- filter(airquality, Month == 6 | Solar.R > 200)
air


#행 번호로 특정 위치를 식별해서 추출하고싶을 때
slice(airquality, 6:10)

slice(airquality, n()) #마지막 행번호
slice(airquality, (n()-4:n()) #마지막 행 번호에서 4를 뺀거로부터 마지막 행번호까지
                              #끝에서 5개 출력  

      

####arrange####
#지정한 열을 기준으로 해서 오름차순으로 정렬해준다
air <- arrange(airquality, Temp, Month, Day)
air

#중간에 다른 열을 다른 기준으로 정렬하고 싶을 때
#temp는 내림차순으로 정렬이 된다 
#동률이 생기면 다시 Month기준으로 오름차순으로 정렬을 하고 
#또 동률이 생기면 Day를 기준으로 오름차순 정렬을 한다
air <- arrange(airquality, desc(Temp), Month, Day)
air



####select####
#원하는 열을 추출
#출력 순서는 입력으로 지정한 순서와 같다
#원하는 순서대로 재배열 하고 싶을 때도 사용하면 좋다
air <- select(airquality, Month, Day, Temp)
head(air)

#추출하고자 하는 열이 인접해있을 때 :로 지정 가능하다
air <- select(airquality, Month:Temp)
head(air)


#원하지 않은 열을 제외하고싶다
air <- select(airquality,  -(Temp:Day))
head(air)

#인수 이름을 지정할 때 열 이름을 변경도 가능하다
#select함수는 내가 지정한 열만 출력된다

air <- select(airquality, Solar = Solar.R)
head(air)

#이름을 변경하는게 목적이면은 위의 방법은 적절하지 못하다
#renames가 적절하다
#renames는 모든 열이 출력된다
air <- rename(airquality, Solar = Solar.R)
head(air)

air <- rename(airquality, Tempasd = Temp)
head(air)


#중복되지않은 고유한 값
air <- distinct(select(airquality, Month))
head(air)




####mutate####
#새로운 열을 추가할 때 사용
air <- mutate(airquality,
       Temp.c =(Temp-32)/ 1.8,
       Diff = Temp.c - mean(Temp.c))

head(air)

#표준패키지에 포함된 함수
#아래를 출력하면 오류가 발생한다
#Temp.c는 쫌 전에 만든 함수인데 바로 사용을 하려고 했기 때문이다.
air <- transform(airquality,
          Temp.c =(Temp-32)/ 1.8,
          Diff = Temp.c - mean(Temp.c))



#아래는 쫌 전에 만든Temp.c를 바로 사용 안했기 때문에 출력이 가능하다
air <- transform(airquality,
                 Temp.c =(Temp-32)/ 1.8)
                 
head(air)



####summarise####
#요약 통계량 계산 가능
summarise(airquality,
          mean(Temp))


#여러개 계산 가능
summarise(airquality,
          mean(Temp, na.rm = TRUE),
          median(Temp, na.rm = TRUE),
          sd(Temp, na.rm = TRUE),
          max(Temp, na.rm = TRUE),
          min(Temp, na.rm = TRUE))




#이름도 지정이 가능하다
summarise(airquality,
          Mean = mean(Temp, na.rm = TRUE),
          Median = median(Temp, na.rm = TRUE),
          Sd = sd(Temp, na.rm = TRUE),
          Max = max(Temp, na.rm = TRUE),
          Min = min(Temp, na.rm = TRUE))



#패키지가 고유하게 제공되는 유용한 요약 통계 함수
summarise(airquality,
          Mean = mean(Temp, na.rm = TRUE),
          Median = median(Temp, na.rm = TRUE),
          Sd = sd(Temp, na.rm = TRUE),
          Max = max(Temp, na.rm = TRUE),
          Min = min(Temp, na.rm = TRUE),
          N = n(),  #행의 개수
          Distinct = n_distinct(Month), #중복되지 않은 고유한 값 
          First = first(Month),  #첫번째 값 
          Last = last(Month))   #마지막 값



#데이터프레임으로부터 무작위로 행을 추출 (지정된 개수만큼)
sample_n() 

sample_n(airquality, 5) 


#지정된 인수 비율만큼 추출
sample_frac(airquality, 0.05)

#복원추출가능
sample_frac(airquality, 0.05,replace = TRUE)


#주어진 데이터 셋으로부터 집단변수의 어떤 레벨별로
#분할된 그룹화된 객체를 생성
group_by()

group_by(airquality, Month) #월별로 그룹화된 객체

air.group <- group_by(airquality, Month)
class(air.group)

#티블 형식으로 출력
#티블은 데이터프레임 형식에서 조금 더 추가적인 장점이 있다
air.group



summarise(air.group, Mean.Temp = mean(Temp, na.rm= TRUE))

summarise(air.group, Mean.Temp = mean(Temp, na.rm= TRUE), #월별로 기온의 평균
          SD.Temp = sd(Temp, na.rm = TRUE), #월별로 기온의 표준편차 계산
          Days = n()) #n은 월별로 행의 개수를 계산





##########pipe 연산자##############
#전처리 작업이 아주~~~쉽고 수월하게 가능하다

#원래는 지금까지 했던 모든 함수는 
#첫번째 함수로 데이터프레임을 받아왔지만 

#파이프연산자를 이용하게되면
#데이터 프레임을 다음 함수로 넘겨줄 때 
#자동으로 첫번째 인수로 지정이 되기 때문에
#다음 함수를 이용할 때 간편하게 이용이 가능하다


#한 함수로부터의 출력 결과나 데이터를 다음 함수의 첫번째 인자로 전달할 수 있다
%>% 


#iris데이터 프레임이 head함수 앞쪽으로 전달이 된다
iris %>% head   
#head(iris)와 같다


1:10 %>% mean #1부터 10까지 수를 mean함수에 전달
#mean(1:10)와 같다





###########<내가 원하는 행만들 가져오기까지의 과정>############

#airquality함수에서 Ozone, Temp, Month를 추출
a1<- select(airquality, Ozone, Temp, Month)
a1
#a1 데이터프레임을 받아서 Month로 그룹핑
a2 <- group_by(a1, Month) #Month로 그룹화 된 세개의 데이터프레임이 생성
a2
#a2를 받아서 월별로 Ozone, Temp의 평균을 계산
a3 <- summarise(a2, 
                Mean.Ozone = mean(Ozone, na.rm = TRUE),
                Mean.Temp = mean(Temp, na.rm = TRUE))
a3
#a3을 받아서 내가 원하는 행을 가져온다
a4 <- filter(a3, Mean.Ozone > 40 | Mean.Temp > 80)
a4

#위의 과정을 파이프연산자를 사용해서 출력
air <- airquality %>% 
  select(Ozone, Temp, Month) %>%
  group_by(Month) %>%
  summarise(Mean.Ozone = mean(Ozone, na.rm = TRUE),
            Mean.Temp = mean(Temp, na.rm = TRUE)) %>%
  filter(Mean.Ozone > 40 | Mean.Temp > 80)

air












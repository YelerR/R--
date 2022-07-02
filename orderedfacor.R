####factor
#levels를 원소로 하는 벡터
#인수로 주어지는 문자 벡터 데이터에서 중복되지 않는 레벨을 추출해서 factor를 추출 
review <- c("Good", "Good", "Indiffenent", "Bad", "Good", "Bad")
review
review.factor <- factor(review)
review.factor #""값이 사라지고 levels가 출력



str(review.factor) #3개의 레벨을 갖고있다
                   #Bad(1) Good(2) Indiffenent(3)
as.numeric(review.factor)                   




####event.factor
#범주가 지정되어서 출력된다
eventday <- c("Mon", "Mon", "Tue", "Wed", "Mon",
              "Wed", "Thu", "Fri", "Tue")
eventday
event.factor <- factor(eventday)
event.factor

#주어진 자체의 값은 변함이 없지만
#데이터를 표현이 가능한 범주는 변경이 됐다
event.factor <- factor(eventday,levels=c("Mon", "Tue", "Wed",
                                         "Fri", "Thu", "Sat", "Sun"))
event.factor

#펙터의 레벨만을 확인하고 싶을 때
levels(event.factor)
levels(review.factor)


#레벨을 변경
levels(review.factor) <-  c("B", "G", "k")
review.factor


#레벨의 개수를 알고싶을 때
nlevels(review.factor)


#레벨의 길이를 알고싶을 때 = 개수
length(levels(review.factor))




####서열팩터(ordered factor)
eval <- c("Medium", "Low", "High", "Medium", "High")
#문자벡터를 이용해서 범주로 취급하는 데이터로 만든다
eval.factor <- factor(eval)
eval.factor  #levels : High  Low  Medium



#레벨을 변경
#첫번째 방법
levels(eval.factor)
levels(eval.factor) <- c("Low", "Medium", "High")



#두번째 방법
eval.ordered <- factor(eval, levels =c("Low", "Medium", "High"))
eval.ordered

#ordered = TRUE 는 값의 부등호 표시
eval.ordered <- factor(eval, levels=c("Low", "Medium", "High"),
                      ordered = TRUE)
eval.ordered #부등호가 표시되기 때문에 순서적 의미를 레벨이 갖고있다




table(eval.factor)   #표로 내용을 보여준다
table(eval.ordered)  #표의 내용을 순서대로 표시


sex <- c(2,1,2,2,1,0) #2는 남자, 1은 여자
sex.factor <- factor(sex, levels = c(1, 2),
       labels= c("Male", "Female"))
sex.factor   #범주형 데이터로 변경시 1과 2가 아닌 0은 NA값으로 나타남
table(sex.factor)





sex <- c(2,1,2,2,1,0) #2는 남자, 1은 여자
sex.factor <- factor(sex, levels = c(0, 1, 2),
                     labels= c( "haha", "Male", "Female"))
sex.factor   #범주형 데이터로 변경시 1과 2가 아닌 0은 NA값으로 나타남


#1     2
#male  female  로 출력하는 방법은?













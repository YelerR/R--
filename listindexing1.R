[[]]
[]

product <- list("A002", "Mouse", 30000)
product


product[[3]] #3번째 자료에 접근해서 3번째 내부에 있는 자료 값!!을 가져옴
product[[2]] 

product[3] #3번째 원소에 접근해서 3번째 원소 전체(자료 자체)를 다 들고나옴
product[2]


#데이터구조
class(product[[3]])
class(product[3])


product[3] *0.9  #list 이기 때문에 계산 불가
unlist(product[3]) * 0.9 #list 해제하고 계산 해야한다


product[[3]] * 0.9 #계산 가능



product[c(1,2)]  #리스트 형식 원소 추출



#논리값
product[c(FALSE, TRUE, TRUE)] #TRUE값만 남는다
#음수
product[-1]




#이름을 지어주기
product <- list(id = "A002", name = "Mouse", price = 30000)
product


#이름이 주어지면 이름 가지고 list작업을 할 수 있다
product[["name"]]



#$표시로 접근 가능
product$name


#[]로 인덱싱 가능
product[c("name", "price")]


#없는 이름 출력해보기
#인뎅싱작업에서 이름이 없으면 NULL 출력
product[["fourth"]]
product$fourth

#숫자를 인해서 출력을 하면 오류가 발생한다
product[[4]]



product[c(4, 2, 5)]  
product[c("fourth", "name", "fifth")]





lst <- list(one = 1, two = 2,
            three = list(alpha = 3.1, beta = 3.3))
lst



#lst의 list안에 있는 three의 beta값 출력
lst[["three"]][["beta"]]
lst[[3]][["beta"]]
lst[[3]][[2]]
lst$three$beta























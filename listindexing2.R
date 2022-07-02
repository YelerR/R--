product <- list(id = "A001", name = "Mouse", price = 30000)
product


#30000만원을 40000만원으로 qusrud
#변경할 때는 [], [[]] 똑같다
product[[3]] <- 40000
product[["price"]] = 40000
product$price <- 40000
product

#위에처럼 한개값만 변경하고 싶을 때는 대괄호 한개만 써도 상관없지만
#지금처럼 두개 이상 변경하고 싶을 때는 대괄호 두개를 써줘야한다
product[[3]] <- c(30000, 40000)
product


#괄호 한개 사용하고 싶을 때는
#list로 변경 후 사용해야 한다
product[3] <- list(c(30000,40000))
product


product[1:3] <- list("A002", "keyboard", 90000)
product



#4번째에 추가
product[[4]] <- c("Domestic", "Export")
product

names(product)[4] <- "love"
product



#이름 넣고 추가하기
product$madein <- c("Korea", "China")
product

product[["madein"]] <- c("Korea", "China")
product

product["madein"] <- list(c("Korea", "Chinaaa"))
product


#4번째는 이름 어떻게 설정할까???



#여러개의 원소를 한 번에 추가할 때
product[6:9] <-  list(c(0.12, 0.15, 0.22, 0.27))
product







#이름과 내용을 합칠 때
names <- c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun")
names
values <- c(842, 729, 786, 751, 844, 851, 702)

traffic.death <- list()
traffic.death


traffic.death[names] <- values
traffic.death




#금요일 내용을 지울 때 ([] or [[]] 둘 다 가능)
traffic.death[["Fri"]] <- NULL 
traffic.death



#복수는 []만 가능
traffic.death[c("Sat", "Sun")] <-  NULL
traffic.death




#범위에 해당하는 값 삭제
traffic.death[traffic.death < 750 ] <- NULL
traffic.death





















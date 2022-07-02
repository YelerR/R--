##출력
pi
sqrt(3)
print(pi)
print(sqrt(3))

#행렬이면 행렬/ 리스트면 리스트로 출력한다
print(matrix(c(1,2,3,4), ncol =2))
print(list("Busan", "Spiderman", "Ironman"))      


#여러개의 함수가 주어지면 에러 발생한다
print("The square root of 3 is", sqrt(3), ".")

#cat함수는 여러개 함수를 입력 가능
#공백으로 구분
cat("The square root of 3 is", sqrt(3), ".")

#\b를 이용하면 공백 없에기 가능 (r console은 다르다)
cat("The square root of 3 is", sqrt(3), "\b.")

#줄 이동을 안하기 때문에 \n으로 줄 이동을 시켜줘야 한다
cat("The square root of 3 is", sqrt(3), "\b.", "\n")


name <- "Jenny"
cat("Hello", name, "\b.\n", "Isn\'t it", "\t", "A LOVELY DAY")

hero <- list("Busan", "Spiderman", "Ironman")
cat(hero)
cat(unlist(hero))


pi
pi*200
pi/200


#출력할 자리수 조정 가능
print(pi, digits = 3)
print(pi / 200, digits = 3)
print(pi * 200, digits = 3)

#cat함수는 그 자체로는 자리수를 조정할 수 없다
#cat함수로 출력하기 전에 format함수를 이용해서 출력할 자리수로 조정 가능
cat(format(pi, digits = 5), "\n")


pnorm(-3:3)
print(pnorm(-3:3), digits = 3)



#테이블 형식의 수치데이터를 자리수에 맞춰 출력하기에 유용하게 사용할 수 있다
z <- c(0, 1.64, 1.96, 2.58)
ptbl <- data.frame(Z = z, Lower = pnorm(-z), Upper = pnorm(-z))
ptbl
print(ptbl, digits = 3) #유효자리 3자리


prime <- c(2,3,5,7,11,13)
cat(prime,file = "prime.txt", sep = "\t", "\n")


#제품 파일 만들어보기
id <- c("A001", "A002", "A003")
name <- c("Mouse", "Keyboard", "USB")
price <- c(30000, 90000, 50000)
cat(id, file = "product-cat.txt", sep = "\t", "\n")


#추가하기
#append = TRUE를 지정하지 않게되면 파일을 새로 생성하게 돼서
#기존 파일내용이 삭제된다
cat(name, file = "product-cat.txt", sep = "\t",append = TRUE, "\n")
cat(price, file = "product-cat.txt", sep = "\t",append = TRUE, "\n")



#파일 함수를 이용해서 연결객체를 먼저 생성하고 
#그 객체를 cat함수에 파일 함수에 지정하는 방법
#읽기 r / 쓰기 w 
con <- file("product-cat2.txt", open = "w") #연결객체 생성
#append = TRUE함수를 지정해줄 필요가 없다
cat(id, file = con, sep = "\t", "\n") #id 생성
cat(name, file = con, sep = "\t", "\n")
cat(price, file = con, sep = "\t", "\n")
close(con) # 파일과의 연결 종료


#화씨를 섭씨로 변환하는 작업
#콘솔창에서 숫자 입력
fah <- readline("Fahrenheit?")
fah <- as.numeric(fah)
print(paste("Fahrengeit = ", fah)) #콘솔창에 입력받은 숫자 출력
cel <- (fah-32) /1.8
print(paste("celsius =", cel))


#파일로 저장가능
sink("Fahrenheit-output.txt")
fah <- readline("Fahrenheit?")
fah <- as.numeric(fah)
print(paste("Fahrengeit = ", fah)) #sink함수를 이용하면 출력안되고 저장됨
cel <- (fah-32) /1.8
print(paste("celsius =", cel))
sink()


#행이름이 있으면 행이름을 저장해주고 없으면 일렬번호를 저장해준다
head(Orange)
write.csv(x = Orange, file = "orange.csv")

#일렬번호 저장 안하도록 하는 함수
write.csv(x = Orange, file = "orange.csv", row.names = FALSE)

#구분자 ;
write.table(x = Orange, file = "orange.txt")
write.table(x = Orange, file = "orange.txt", sep= ";", row.names = FALSE)


#객체를 파일로 저장가능
#save 파일로 저장된 객체를 작업공간 메모리로 적재하는 방법 road함수
ptbl <- data.frame(Z = z, Lower = pnorm(-z), Upper = pnorm(z))
ptbl
save(ptbl, file = "ptbl.RData")
rm(ptbl)
z
ptbl #삭제돼서 파일을 불러올 수 없다


#ptbl함수 다시 불러오기
#ptbl 작업공간에 다시 집어넣기
load("ptbl.RData")
ls()
ptbl


#일방적으로 .으로 시작하는 함수명은 보여주지 않는다
list.files()
list.files(recursive = TRUE)

#.으로 시작되는 함수명 보기 / 히든 파일까지 모두 보기
list.files(all.files = TRUE)

#패턴 지정해서 불러오기
list.files(pattern = "txt")

list.dirs()

#특정 하위 디렉터리 내의 파일을 찾기 위해서는
list.files(path = "./examples")


#파일 생성
file.create("temp.txt")

#생성한 파일 존재하는지 확인하기
file.exists("temp.txt")

#파일 제거
file.remove("temp.txt")

file.exists("temp.txt")















#텍스트

x <- "we have a dream"
x
nchar(x) #문자개수
length(x) #문자열 길이 "we have a dream"가 한 개이기 때문에 1출력

y <- c("we", "have", "a", "dream")
y
nchar(y)
length(y)


nchar(y[4]) #dream의 문자 개수


letters
sort(letters, decreasing = TRUE) #역순


tolower() #모든 소문자
toupper() #모든 대문자

a <- "asd asd qwwe zxc"
tolower(a)
toupper(a)


#텍스트 분할
#출력 결과가 리스트로 나온다
a <- "asd asd qwwe zxc"
strsplit(a, split = " ") #공백을 구분자
strsplit(a, split = "")

#벡터형식
#문자 뽑아내기 첫번째
a1 <- unlist(strsplit(a, split = " "))
a1
a1[3]

#두번째
unlist(strsplit(a, split = " "))[[3]]
#세번쨰
strsplit(a, split = " ")[[1]][[3]]



b1 = "asd vv Vdrtl xazrer"
b2 = "aor lallc is rnen zzzx IS Aor"
b3 = "eoc zzzd rks zkds"

littleprice <- c(b1, b2, b3)
littleprice
strsplit(littleprice, " ")
strsplit(littleprice, " ")[[3]]
strsplit(littleprice, " ")[[3]][[1]]

#유니크 함수(중복되지 않는)는 대문자 소문자를 구별하기 때문에
#모두 소문자 /대문자로 변경 후 추출해야한다

c <- strsplit(littleprice, " ")[[2]]
c

unique(c) #대문자/ 소문자로 변경 후 추출 가능
unique(tolower(c))


#텍스트 결합
paste("Everybody", "wants", "to", "fly")  #4개의 텍스트 벡터

#c함수에 의해서 한개의 텍스트 벡터로 인식
paste(c("Everybody", "wants", "to", "fly")) 


c
paste(c) #이것은 하나의 텍스트 벡터로 인식

paste("Everybody", "wants", "to", "fly", sep = "- ")

paste("Everybody", "wants", "to", "fly", sep = "")
paste0("Everybody", "wants", "to", "fly")


paste(pi, sqrt(pi)) #숫자도 문자로 인식을 해서 결합

paste(2, "class", 3) #문자랑 숫자도 섞어서 가능



heros <- c("Batman", "Captain America", "Hulk")
colors <- c("Black", "Blue", "Green") 
paste(heros,colors)
paste(heros[2],colors[1])


#재사용규칙
paste("Type", 1:5)
paste(heros,"wants", "to", "fly")



#collapse 
paste(c("Everybody", "wants", "to", "fly"), collapse = " ")



paste(heros,"wants", "to", "fly")
paste(heros,"wants", "to", "fly", collapse = " and ")



#sep는 paste 구분자
#collapse는 상위수준에서 결합을 해줌



paste(heros,"wants", "to", "fly", sep = "-")
paste(heros,"wants", "to", "fly", sep = "-", collapse = ":") #sep보다 상위버전



paste(month.abb, 1:12)
paste(month.abb, 1:12, sep = "-")
paste(month.abb, 1:12, sep = "-" , collapse = "-")




#가능한 주어진 모든 숫자의 곱을 구해준다
#행렬 형식으로 출력해준다
outer(c(1, 2, 3), c(1, 2, 3)) 


#기본적으로 곱을 해주지만 
#추가 인수로 함수를 주어주면 다른 작업도 가능하다
asian.countries <- c("Korea", "Japan", "China")
asian.countries
info <- c("GDP", "Population", "Area")
info

outer(asian.countries, info, FUN = paste)
out <- outer(asian.countries, info, FUN = paste, sep ="-")
out

#벡터로 변경
as.vector(out)

#데이터프레임으로 변경
as.data.frame(out)



#대각선 아래를 추출해서 그 반대를 추출
#윗부분 남고 아랫부분 제거
#중복되지 않은 텍스트 집합을 구할 수 있다
x <-outer(asian.countries, info, FUN = paste, sep ="-")
x[!lower.tri(x)]





customer <- "Jobs"
buysize <- 10
deliveryday <- 3
paste("Hello", customer, ", your order of", buysize,
      "product(s) will br dilivered within", deliveryday," day(s).", sep ="")


#위에 paste보다 편한 함수
#%s는 대응되는 변수를 텍스트 형식의 포맷으로 출력
#sprinf함수는 %s말고도 다양한 형식으로 출력가능
sprintf("Hello %s your order of %s
              product(s) will be dilivered within %s days",
        customer, buysize, deliverday)





customer <- c("Jobs", "Gates", "Bezos")
buysize <- c(10, 7, 12)
deliveryday <- c(3, 2, 7.5)

sprintf("Hello %s your order of %s product(s) will be dilivered within %s days",
        customer, buysize, deliveryday)

#.1f 소수점 첫자리
sprintf("Hello %s your order of %s product(s) will be dilivered within %.1f days",
        customer, buysize, deliveryday)




#부분 문자열 추출
substr("Data Analytics", start = 1, stop = 4)
substr("Data Analytics", start = 6, stop = 14)


#종료위치만 입력 
substring("Data Analytics", 6)


class <- c("Data Analytics", "Data Mining", "Data Visualization")
substring(class, 1, 4)




countries <- c("Korea, KR", "Unites States, US", "China, CH")
substr(countries, nchar(countries)-1, nchar(countries))




#특정문자열 찾기
head(islands)
landmasses <- names(islands)
landmasses

grep(pattern = "New", x = landmasses) #해당위치 인덱스 출력


index <- grep(pattern = "New", x = landmasses)
landmasses[index]


grep(pattern = "New", x = landmasses, value = TRUE) 
#value =TRUE는 인덱스가 아닌 값이 출력

landmasses[grep(" ", landmasses)] #공백이 포함된
grep(" ", landmasses, value = TRUE)




sub() #일치하는 처음 문자열만 새로운 문자열로 바꿔줌
gsub() #일치하는 모든 문자를 찾아서 새로운 문자열 바꿔줌


txt <- "Data Analytics is useful. Data Analytics is also interesting."
sub(pattern = "Data", replacement = "Business", txt)
gsub(pattern = "Data", replacement = "Business", txt)

x <- c("product.csv", "customer.csv", "supplier.csv")
gsub(pattern = ".csv", replacement = "",  x)
gsub(".csv", "", x)



















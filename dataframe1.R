
#변수라 하고 열을 가져야한다
data.frame()
v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)
data.frame(v1, v2, v3) #열 이름

data.frame(row.names = v1, v2, v3) #v1은 행의 이름으로 사용되고
                                   #v2, v3는 열의 이름으로 사용된다





#4.0.0버전 부터는 data.frame()함수에
#stringAsFactors 기본 값이 FALSE에서 TRUE로 변경되었다.
#굳이 stringAsFactors를 안써도 자동으로 인식을 해서
#chr그대로 읽어올 수 있다.
product <- data.frame(id = v1, name = v2, price = v3)
product
str(product)




product <- data.frame(id = v1, name = v2, price = v3,
                      stringsAsFactors = FALSE)
str(product)
product




#행렬의 이름이 저장되어있지 않으면 
#v1, v2, v3 ..로 자동 변경 된다
mat <- matrix(c(1, 3, 5, 7, 9,
                2, 4, 6, 8, 10,
                2, 3, 5, 7, 11), ncol = 3)
mat
as.data.frame(mat) #행렬은 자동으로 데이터프레임으로 변경된다


number <- as.data.frame(mat)
number
colnames(number) <- c("odd", "even", "prime")
number



#리스트를 데이터 프레임으로 변경 가능
v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)

lst <- list(v1, v2, v3)
lst

as.data.frame(lst) #열의 이름을 지정 안해주면 자동으로 이름을 정해주는데
                   #이름이 이쁘지않다



#데이터프레임 열 이름을 내가 지정한 변수로 변경
product <- as.data.frame(lst)
product
colnames(product) <-  c("id", "name", "price")
product


#데이터프레임의 행 개수를 알고 싶을 때
nrow(product)



#데이터프레임의 열 개수를 알고 싶을 때
ncol(product)
length(product) #데이터 프레임에 length함수를 사용하면 열의 개수를 반환한다.















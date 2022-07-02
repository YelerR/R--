library(tibble)
data.frame()


v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)
product <- tibble(id = v1, name = v2 , price = v3)
str(product)
product  #각 열에 데이터 형식이 나타나있다


#tribble
#작은 규모의 데이터 셋을 편리하게 만들 수 있다
tribble(
  ~id, ~name, ~price,
  "A001","Mouse",30000,
  "A002","USB", 90000, 
  "A003","Keyboard",50000
)
  




#tibble
#리스트 데이터 구조의 열을 갖을 수 있다 (리스트 열/ 리스트 컬럼)
#리스트 구조에는 어떠한 형식의 데이터을 입력할 수 있다(다양한 형태의 구조)
tb <- tibble(id = c(1, 2, 3),
              data = list(tibble(x = 1, y = 2),
                          tibble(x = 4:5, y = 6:7),
                          tibble(x = 10)))
tb

tb$data #데이터구조
tb$data[[2]]


#일반정인 데이터 프레임을 tibble형식으로 변경
str(iris)
head(iris)
as_tibble(iris)


#데이터프레임과 티블의 차이는 화면의 출력하는 방식이다
#데이터프레임은 모든 행과 열을 화면에 출력하는 반면에
#10개의 행과 한 화면에 출력할 수 있는 열을 출력한다



library(Lahman)
install.packages("Lahman")
str(Batting)
head(Batting)


Batting.tbl <- as_tibble(Batting)
Batting.tbl

print(Batting.tbl, n = 20)
print(Batting.tbl, n = 3, width = Inf)

class(Batting.tbl)


#다시 데이터 프레임으로 변경
Batting.df <- as.data.frame(Batting.tbl)
Batting.df 
class(Batting.df)





















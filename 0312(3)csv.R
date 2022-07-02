#####파일 읽기 함수
#read.csv() - csv형식
#read.table - table형식  (r에서 가장 많이 사용함)
#read.fwf() - 고정길이 형식
#readLines() - 라인단위읽기
#scan() - 항목단위읽기
#read.xlsx - 엑셀형식


read.csv(file = "product.csv")
?read.csv
read.csv(file= "product-with-no-header.csv", header = FALSE)


#header가 포함되어있지 않다.
#table함수는 헤더를 포함하고 있지 않다고 가정하기 때문에
#헤더도 데이터의 일부로 인식을 한다
read.table(file = "product.txt") 

#table함수는 헤더를 TRUE로 줘야 헤더를 인식하고 출력한다
read.table(file = "product.txt", header= TRUE) 

#:형식 읽으려면 sep함수에 :를 지정해줘야한다
read.table(file = "product-colon.txt", header = TRUE, sep = ":")


#만약에 결측값으로 표현되는 NA말고 다른 문자로 나타냈다면
#NA.strings인수에다가 그 문자를 지정을해서
#파일을 읽어들일 때 결측값으로 인식되도록 해야한다

#<결측값으로 . 을 입력해놓은 파일>
#이렇게 출력을 하면 r에서는 .으로 인식을 하고 
#결측값으로 인식을 하지 않는다
read.table(file = "product-missing.txt", header = TRUE)
read.table(file = "product-missing.txt", header = TRUE,
           na.strings = ".")




#고정된 길이로 데이터 필드를 구분하는 경우가 종종 있다.

#widths에는 각 데이터 필의 길이를 차례대로 지정
#음수가 지정되면은 read.fwf함수는 그 숫자만큼의 열을 건너뛴다
#0이 지정되면은 해당 필드는 결측값으로 채워진다    
read.fwf(file = "product-fwf.txt", widths = c(4, -1, 10, 8)) #(여기서 -1은 공백)
                                        
read.fwf(file = "product-fwf.txt", widths = c(4, -1, 10, 8),
         col.names = c("id", "name", "price"))  #열의 이름 지정






#테이블 형식의 사각형이 아닌 불규칙한 모양
readLines(con = "won-dollar.txt") #라인단위로 읽어서 문자벡터로 반환
readLines(con = "won-dollar.txt", n=2) #두개의 라인만 읽어들임






####scan####
#scan함수는 what인수에 지정된 패턴을
#모든 데이터 항목에 대해서 반복적으로 처리를 한다

#데이터항목 단위로 읽어들임
#예를들어서 character()를 지정하게 되면
#데이터 파일을 읽어들일 때 각 데이터 항목은 문자벡터로 처리가된다.
scan(file = "won-dollar.txt", what = character())


#패턴을 리스트 형식으로 지정할 수 있다
#날짜는 문자로, 살 때와 팔 때 환율은 숫자로 읽어들인다
scan(file = "won-dollar.txt",
     what = list(character(), numeric(), numeric()))


#데이터를 읽어들일 때 리스트 원소의 이름을 부여할 수 있다
scan(file = "won-dollar.txt",
     what = list(data = character(),
                 buy = numeric(),
                 sell = numeric()))


#scan함수에 n라인  함수 이용
#nlines에 2를 지정하게되면 처음 2개의 라인만을 읽어들임
scan(file = "won-dollar.txt",
     what = list(data = character(),
                 buy = numeric(),
                 sell = numeric()), nlines  = 2)



#skip함수에 3을 지정하면 3번째 까지는 무시하고 4번째 라인부터 읽어들임
scan(file = "won-dollar.txt",
     what = list(data = character(),
                 buy = numeric(),
                 sell = numeric()), skip  = 3)





#일반 텍스트 파일이 아닌 엑셀 파일로부터 읽어 들일 수 있다
install.packages("openxlsx")
library(openxlsx)

#sheet인수에는 데이터가 포함되어있는 워크시트 번호를 지정할 수 있다
read.xlsx(xlsxFile = "product.xlsx", sheet = 1)


















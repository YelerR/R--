string <- c("data analytics is useful",
            "business analytics is helpful",
            "visualization of data is interesting for data scientists")
string

#해당 위치에 데이터를 포함하고있는 원소의 인덱스를 반환
grep(pattern = "data", x = string)

#값으로 반환

grep(pattern = "data", x = string, value = TRUE)


string[grep(pattern = "data", x = string)] 


#useful 또는 helpful 포함o
grep("useful|helpful", string, value = TRUE)


#useful 또는 helpful 포함x
grep("useful|helpful", string, value = TRUE, invert = TRUE)


#l은 logical
#패턴이 존재하면 TRUE 반환
#존재하지 않으면 FALSE 반환
grepl(pattern = "data", x = string ) #논리값으로 반환





#ignore.case = TRUE 대소문자 구분 없이 패턴 매칭
state.name 
grepl("New", state.name , ignore.case = TRUE)


#논리연산을 수행해서 벡터 값으로 반환
state.name[grepl("New", state.name , ignore.case = TRUE)]



#sum함수와 함께 사용 가능
#몇 개가 있는지 합을 출력
sum(grepl("New", state.name , ignore.case = TRUE))


#패턴 위치 함수
#####regexpr(찾고자 하는 패턴 값, 내용의 변수)

string <- c("data analytics is useful",
            "business analytics is helpful",
            "visualization of data is interesting for data scientists")

string

regexpr(pattern = "data", text = string)

#위의 결과값
[1]  1 -1 18  #첫번 째 매칭이 이루어지는 시작 위치
              #-1은 매칭이 되지 않았다(2번째 문자)
attr(,"match.length")
[1]  4 -1  4  #매칭된 패턴의 길이
attr(,"index.type")
[1] "chars"   
attr(,"useBytes")
[1] TRUE


#모든 매칭의 위치와 길이 반환
#각각의 원소별로 값을 갖고 있는 리스트 형식
gregexpr(pattern = "data", text = string)



#패턴 추출 함수
#regmatches(탐색대상의 문자열, (g)regexpr로부터 산출된 매칭된 패턴의 위치정보)
#첫번째 매칭된 함수만 추출
regmatches(x = string, m = regexpr("data",string)) 


#모든 데이터를 추출하고 싶을 때 
#각각에서 문자열을 추출
regmatches(x = string, m = gregexpr("data",string)) 


#text문자열로부터 "data"문자열을 제외한 모든 문자열을 추출
regmatches(x = string, m = gregexpr("data",string),
           invert = TRUE) 


#특정 문자열을 다른 문자열로 치환
sub()  #첫번째 문자열만 치환
gsub() #모든 문자열을 치환


sub(pattern = "data", replacement = "text", x = string)
[1] "text analytics is useful"                                
[2] "business analytics is helpful"                           
[3] "visualization of text is interesting for data scientists"
#[3]에서 첫번째만 치환을 해줬고 두번째 data함수는 치환을 안해줬다



string

gsub(pattern = "data", replacement = "text", x = string)


#패턴을 구분자로 사용한 문자열 분할
#리스트 형식으로 출력
strsplit(x = string, split = " ") #공백을 기준으로 단어 단위로 분할


#unlist를 이용해서 벡터형식으로 출력
unlist(strsplit(x = string, split = " "))



#중복 없이 출력
unique(unlist(strsplit(x = string, split = " ")))







































